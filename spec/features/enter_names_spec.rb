require_relative "../../app.rb"

Capybara.app = Battle

  feature 'fill names and submitting the form' do
    scenario "player1 name appears" do
      visit("/")
      fill_in :player1, with: "whatever name"
      click_button "Submit"
      expect(page).to have_content "whatever name"
    end

    scenario "player2 name appears" do
      visit("/")
      fill_in :player2, with: "whatever name"
      click_button "Submit"
      expect(page).to have_content "whatever name"
    end

    scenario "submitting names" do
      visit('/')
      fill_in :player1, with: 'Dave'
      fill_in :player2, with: 'Mittens'
      click_button 'Submit'
      expect(page).to have_content 'Dave vs. Mittens'
    end
  end

    feature 'displaying hit points' do
      scenario "Opponent hit point" do
        visit('/')
        fill_in :player1, with: 'Dave'
        fill_in :player2, with: 'Mittens'
        click_button 'Submit'
        visit('/play')
        expect(page).to have_content "Dave vs. Mittens 60HP"
      end
  end
