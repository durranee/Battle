# in spec/features/testing_infrastructure_spec.rb

feature 'Testing infrastructure' do

  scenario 'lets players enter their names' do
    visit('/')
    fill_in('p1', with: 'John')
    fill_in('p2', with: 'Simon')
    click_button('Fight')
    expect(page).to have_content 'John v Simon'
  end
end
