require "spec_helper"

describe "Testing the BBC" do

  context "Testing Login" do

    xit "should respond with success when we login with a valid email and password" do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      sleep 1
      @bbc_site.bbc_login.fill_email
      sleep 1
      @bbc_site.bbc_login.fill_password
      sleep 1
      @bbc_site.bbc_login.click_submit
      sleep 2
    end

    xit "should respond with error box under the username if left with no input" do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      sleep 1
      @bbc_site.bbc_login.click_username
      sleep 1
      @bbc_site.bbc_login.click_neutral_area
      sleep 1

      expect(@bbc_site.bbc_login.username_error).to be true


    end

    it "should respond with specific error message if username entry left with no input" do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      sleep 1
      @bbc_site.bbc_login.click_username
      sleep 1
      @bbc_site.bbc_login.click_neutral_area
      sleep 1

      expect(@bbc_site.bbc_login.username_error_text).to eql "Something's missing. Please check and try again."

    end

    it "should respond with error box under the password if left with no input" do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      sleep 1
      @bbc_site.bbc_login.click_password
      sleep 1
      @bbc_site.bbc_login.click_neutral_area
      sleep 1

      expect(@bbc_site.bbc_login.password_error).to be true


    end

    it "should respond with specific error message if password entry left with no input" do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      sleep 1
      @bbc_site.bbc_login.click_password
      sleep 1
      @bbc_site.bbc_login.click_neutral_area
      sleep 1

      expect(@bbc_site.bbc_login.password_error_text).to eql "Something's missing. Please check and try again."

    end

  end

end
