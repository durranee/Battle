feature 'P1 being able to see other players hit points' do
  scenario 'while in play, be able to see other players hit points' do
    sign_in_and_play
    expect(page).to have_content 'Simon: 100HP'
  end
end

feature 'When attacked, take away P2 HPs' do
  scenario ' while in play, and attacked, take reduce players HP by 10' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content 'Simon: 90HP'
  end
end
