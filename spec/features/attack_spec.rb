# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, 
# and I want to get a confirmation

feature 'Attack a player' do
    scenario 'Attack Player 2' do
    sign_in_and_play 
    click_button 'Attack'
    expect(page).to have_content "Francesco attacked Sarah" 
    end 

    scenario 'Reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Sarah: 60HP'
    expect(page).to have_content 'Sarah: 50HP'
    end
end
