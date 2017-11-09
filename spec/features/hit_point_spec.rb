require_relative "../../app.rb"

feature 'displaying hit points' do
  scenario "Opponent hit point" do
    sign_in_and_play
      expect(page).to have_content "60HP"
  end
end
