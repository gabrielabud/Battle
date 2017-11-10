require_relative '../../app.rb'

feature 'attacking oppents' do
  scenario 'getting confirmation after attacking' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Gabriela attacked Lewis'
  end
end

feature 'announcing loser' do
  scenario 'player1 loses' do
    sign_in_and_play
    18.times { attack_back }
    click_button 'Attack'
    expect(page).to have_content 'Lewis you lost'
  end

  scenario 'player2 loses' do
    sign_in_and_play
    19.times { attack_back }
    click_button 'Attack'
    expect(page).to have_content 'Gabriela you lost'
  end
end
