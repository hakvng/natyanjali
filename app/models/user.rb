class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_SYNTAX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_SYNTAX }
  validates_uniqueness_of :email, case_sensitive: false
  has_secure_password
  validates :password, length: { minimum: 6 }
  validates :dance_years, length: {maximum: 2}, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 99 }

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  private
    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end
