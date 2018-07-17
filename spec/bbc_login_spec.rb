require "spec_helper"

describe "Testing the BBC" do

  context "Testing Login" do

    it "should respond with success when we login with a valid email and password" do
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

  end

end
