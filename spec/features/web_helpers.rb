
def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Gabriela'
  fill_in :player2, with: 'Lewis'
  click_button 'Submit'
end
