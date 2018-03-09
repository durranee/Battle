
feature 'Submitting names' do

  scenario 'Players enter their names' do
    sign_in_and_play
    expect(page).to have_content 'P1 v P2'
  end
end
