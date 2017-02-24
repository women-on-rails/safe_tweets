require 'rails_helper'



feature "User visits home page" do 
  let!(:message) { create(:message) }
  #let!(:troll_message) { create(:message, :troll_message) }
    
  scenario "and sees a message" do
    visit root_path
    # expect page to have css msg_id
    expect(page).to have_selector(:css, "#message_#{message.id}")
    expect(page).to have_content(message.author)
    expect(page).to have_content(message.content)
  end

end