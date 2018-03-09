feature 'P1 being able to see other players hit points' do
  scenario 'while in play, be able to see other players hit points' do
    sign_in_and_play
    expect(page).to have_content 'P1: 100HP'
    expect(page).to have_content 'P2: 100HP'

  end
end

feature 'When attacked, take away P2 HPs' do
  scenario ' while in play, and attacked, take reduce players HP by 10' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content 'P2: 90HP'
  end
end

feature 'Switch turns after every attack' do
  scenario 'After every attack, switch turns to reduce HP when clicked' do
    sign_in_and_play
    click_button('ATTACK!')
    # $game.swap_turns
    click_button('ATTACK!')
    expect(page).to have_content 'P1: 90HP'
  end
end
