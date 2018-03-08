
def sign_in_and_play
  visit('/')
  fill_in(:p1, with: 'John')
  fill_in(:p2, with: 'Simon')
  click_button('Fight')
end
