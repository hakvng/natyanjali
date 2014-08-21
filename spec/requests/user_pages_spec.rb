require 'spec_helper'

describe "UserPages" do
  subject { page }
  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }
    it { should have_content(user.name) }
  end

  describe "Signup page" do
      before { visit signup_path }
      it { should have_content('Sign up') }
    end
    
    describe "sign up" do
      before { visit signup_path }
      let(:submit) { "Create my account" }

      describe "with invalid info" do
        it "should not change the users count" do
          expect { click_button submit }.not_to change(User, :count)
        end
      end

      describe "with valid info" do
        before do
          fill_in "Name", with: "Example User"
          fill_in "Email", with: "example@asd123.com"
          fill_in "Password", with: "password"
          fill_in "Confirmation", with: "password"
        end
        it "should change the count value" do
          expect { click_button submit }.to change(User, :count).by(1)
        end
        
        describe "after save" do
          before { click_button submit }
          let(:user) { User.find_by(email: "example@asd123.com") }

          it { should have_link("Sign out") }
          it { should have_selector('div.alert.alert-success', text: 'You have registered successfully!') }
        end
      end
    end

    describe "edit" do
      let(:user) { FactoryGirls.create(:user) }
      before { visit edit_user_path(user) }

      describe "page" do
        it { should have_content("Update profile") }
        it { should have_link("Change", href: 'http://gravatar.com/emails') }

      end

      describe "On  invlaid data" do
        before { click_button("Save changes") }

        it { should have_content('error') }
      end
  end
end
