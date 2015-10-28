feature 'switching turns' do
  scenario 'switch turn' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).to have_content "Mittens's Turn"
    click_link 'Attack'
    click_link 'OK'
    expect(page).to have_content "Dave's Turn"
  end
end
