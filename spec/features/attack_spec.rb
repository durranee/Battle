# in spec/features/testing_infrastructure_spec.rb

feature 'Attack player 2' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content('John attacked Simon')
  end
end
