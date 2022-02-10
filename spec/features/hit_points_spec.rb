# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

# 1st version (Sarah and Francesco)
# feature "View other player's hit points" do
#   scenario "Player one requests to view player's two hit points" do 
#   visit('/play')
#   click_on "View player two's hit points"
#   expect(page).to have_content "Player two has 50 points"
#   end
# end 

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
  sign_in_and_play
  expect(page).to have_content 'Sarah: 60HP'
  end
end
