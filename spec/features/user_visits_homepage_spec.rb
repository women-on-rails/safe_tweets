require 'rails_helper'



feature "User visits home page" do 
  let(:message) { FactoryGirl.create(:message) }
  let(:troll_message) { FactoryGirl.create(:troll_message) }
    
  scenario "and sees a message" do
    visit root_path
    expect(page).to have_content(message.author)
    expect(page).to have_content(message.content)
  end

  scenario "and sees filtered messages" do 
    visit root_path
    expect(page).not_to have_content(troll_message.content)
  end

end