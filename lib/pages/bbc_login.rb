require "capybara/dsl"

class BBC_Login
  include Capybara::DSL

  # Constants
  USERNAME = "username"
  DUMMY_EMAIL = "nick.drastikk@gmail.com"
  PASSWORD_INPUT = "password"
  DUMMY_PASSWORD = "budokai3"

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

  def click_username
    click_on "Username"
    sleep 1
  end

  def click_neutral_area

  end

  def click_password
    click_on "password"
    sleep 1
  end

  def username_error
    # find(:css, "#form-message-username").should be_visible
    # expect(page).to have_selector('#form-message-username', visible: true)
  page.has_selector?("#form-message-username")
  end
end
