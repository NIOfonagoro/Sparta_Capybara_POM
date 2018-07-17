require "capybara/dsl"

class BBC_Login
  include Capybara::DSL

  # Constants
  USERNAME = "username"
  DUMMY_EMAIL = "nick.drastikk@gmail.com"
  PASSWORD_INPUT = "password"
  DUMMY_PASSWORD = ""

  def fill_email
    fill_in USERNAME, with: DUMMY_EMAIL
  end

  def fill_password
    fill_in PASSWORD_INPUT, with: DUMMY_PASSWORD
  end

  def click_submit
    click_button "Sign in"
    sleep 1
  end
end
