# in spec/features/testing_infrastructure_spec.rb

feature 'Submitting names' do

  scenario 'Players enter their names' do
    sign_in_and_play
    expect(page).to have_content 'John v Simon'
  end
end

feature 'P1 being able to see other players hit points' do
  scenario 'while in play, be able to see other players hit points' do
    sign_in_and_play
    expect(page).to have_content 'Simon: 80HP'
  end
end
