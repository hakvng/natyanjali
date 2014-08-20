require 'spec_helper'

describe "Authentication" do
  subject { page }
  
  describe "sign in page" do
    before { visit signin_path }
    
    describe "invalid infomation must get rejected" do
      before { click_button "Sign in" }

      it { should have_selector('div.alert.alert-error') }
      
      describe "after visiting the home page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.alert-error') }
      end
    end

    describe "valid information must get the user signed in" do
      let(:user) { FactoryGirl.create(:user) }
      before do
       fill_in "Email", with: user.email.upcase
       fill_in "Password",  with: user.password
       click_button "Sign in"
      end
      
      it { should have_link("Profile", href: user_path(user)) }
      it { should have_link("Sign out",  href: signout_path(user)) }
      it { should_not have_link("Sign in", href: signin_path(user)) }
      describe "sign out" do
        before { click_link "Sign out" }
        it { should have_link "Sign in" }
      end
    end

  end
end
