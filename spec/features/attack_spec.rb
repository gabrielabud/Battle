require_relative "../../app.rb"

feature 'attacking oppents' do
  scenario "getting confirmation after attacking" do
    sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content "Gabriela attacked Lewis!"
  end
end
