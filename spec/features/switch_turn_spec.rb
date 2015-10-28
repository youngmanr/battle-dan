feature 'switching turns' do
  scenario 'swith turn' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).to have_content "Mittens's Turn"
  end
end
