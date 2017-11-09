require_relative "../../app.rb"

Capybara.app = Battle

  feature 'fill names and submitting the form' do

    scenario "submitting names" do
      sign_in_and_play
        expect(page).to have_content 'Dave vs. Mittens'
    end
  end

  feature 'displaying hit points' do
    scenario "Opponent hit point" do
      sign_in_and_play
        expect(page).to have_content "60HP"
    end
  end
