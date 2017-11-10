require_relative '../../app.rb'

feature 'displaying hit points' do
  scenario 'Opponent hit point' do
    sign_in_and_play
    expect(page).to have_content '100 HP'
  end
end

feature 'attack reduces hit points' do
  scenario 'attacking player reduces the hit points by ten' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Back'
    expect(page).to have_content 'Lewis 90 HP vs. Gabriela 100 HP Lewis is attacking now!'
  end
  # feature 'switching button' do
  #   it 'should have the option to switch players ' do
  #     sign_in_and_play
  #     click_button 'Switch'
  #     expect(page).to have_content 'Lewis vs. Gabriela 100 HP'
  #   end
  # end
end
