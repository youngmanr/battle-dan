feature 'Hit Points' do
  scenario 'Display Player 2 Hit Points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end

  scenario 'Display Player 1 Hit Points' do
    sign_in_and_play
    expect(page).to have_content 'Dave: 60HP'
  end
end