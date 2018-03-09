
def sign_in_and_play
  visit('/')
  fill_in(:p1, with: 'P1')
  fill_in(:p2, with: 'P2')
  click_button('Fight')
end
