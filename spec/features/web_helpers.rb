
def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Gabriela'
  fill_in :player_2_name, with: 'Lewis'
  click_button 'Submit'
end
