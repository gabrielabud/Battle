require_relative "../../app.rb"

Capybara.app = Battle
RSpec.feature "homepage displays Testing infrastructure working", :type =>:feature do
  scenario "the message appears" do
    visit("/")
    expect(page).to have_text("Testing infrastructure working!")
  end
end
