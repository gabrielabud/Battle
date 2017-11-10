require_relative '../../app.rb'

Capybara.app = Battle
  feature 'fill names and submitting the form' do
    scenario 'submitting names' do
      sign_in_and_play
      expect(page).to have_content 'Gabriela 100 HP vs. Lewis 100 HP Gabriela is attacking now!'
    end
  end
