require "spec_helper"

describe "Testing the BBC Registration" do

  context "Initial user journey signing up" do

    xit "should take us through the correct registration process with valid statements" do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_homepage.click_go_to_register
      @bbc_site.bbc_registration.click_13_or_over
      @bbc_site.bbc_registration.enter_birthdate
      @bbc_site.bbc_registration.enter_email

      expect(@bbc_site.bbc_registration.test_page).to include "Register with the BBC"
    end

  end

end
