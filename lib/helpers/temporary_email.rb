require "capybara/dsl"

class TempEmail
  include Capybara::DSL

  HOMEPAGE_URL = "https://www.minuteinbox.com/"
  EMAIL_TAG = "#email"

  def visit_minute_inbox
    visit(HOMEPAGE_URL)
  end

  def refresh_email
    click_link 'Delete this mailbox'
  end

  def get_email
    find(EMAIL_TAG).text
  end
end

# email = TempEmail.new
# email.visit_minute_inbox
# email.refresh_email
# p email.get_email
