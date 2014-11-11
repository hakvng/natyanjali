class Image < ActiveRecord::Base

  has_attached_file :file, :styles => {:thumb => "*x150="}

  validates_attachment :file, :presence => true,
             :content_type => { :content_type => /\Aimage\/.*\Z/ },
             :size => { :in => 0..10000.kilobytes }

  def image_full
    self.file.url
  end

  def image_thumb
    self.file.url(:thumb)
  end

end
