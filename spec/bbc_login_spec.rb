require "spec_helper"

describe "Testing the BBC" do

  context "Testing Login" do
    before(:each) do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
    end

    xit "should respond with success when we login with a valid email and password" do
      sleep 1
      @bbc_site.bbc_login.fill_email
      sleep 1
      @bbc_site.bbc_login.fill_password
      sleep 1
      @bbc_site.bbc_login.click_submit
      sleep 4
    end

    xit "should respond with error box under the username if left with no input" do
      @bbc_site.bbc_login.click_username
      @bbc_site.bbc_login.click_neutral_area

      expect(@bbc_site.bbc_login.username_error).to be true


    end

    xit "should respond with specific error message if username entry left with no input" do
      @bbc_site.bbc_login.click_username
      @bbc_site.bbc_login.click_neutral_area

      expect(@bbc_site.bbc_login.username_error_text).to eql "Something's missing. Please check and try again."
    end

    xit "should respond with error box under the password if left with no input" do
      @bbc_site.bbc_login.click_password
      @bbc_site.bbc_login.click_neutral_area

      expect(@bbc_site.bbc_login.password_error).to be true
    end

    xit "should respond with specific error message if password entry left with no input" do
      @bbc_site.bbc_login.click_password
      @bbc_site.bbc_login.click_neutral_area

      expect(@bbc_site.bbc_login.password_error_text).to eql "Something's missing. Please check and try again."

    end

    it "should show error message for short password & username with special keys" do
      @bbc_site.bbc_login.username_with_special_character
      @bbc_site.bbc_login.short_password
      @bbc_site.bbc_login.click_neutral_area

      expect(@bbc_site.bbc_login.username_error_text).to eql "Usernames can only include... Letters, numbers and these characters: ?/|}{+=_-^~`%$#"

      expect(@bbc_site.bbc_login.password_error_text).to eql "Sorry, that password is too short. It needs to be eight characters or more."

    end

    it "should show error message for password that does not match username" do
      @bbc_site.bbc_login.fill_email
      @bbc_site.bbc_login.incorrect_password
      @bbc_site.bbc_login.click_submit


      expect(@bbc_site.bbc_login.password_error_text).to eql "Uh oh, that password doesn’t match that account. Please try again."

    end

  end

end
