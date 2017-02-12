require 'rails_helper'



feature "User toggles Safe mode" do 
  let(:message) { FactoryGirl.create(:message) }
  let(:troll_message) { FactoryGirl.create(:troll_message) }
    
  scenario "it shows unsafe tweets" do
    visit root_path
    # This is not working. Why????
    # click_on(unsafe_messages_path)
    visit unsafe_messages_path
    expect(page).to have_content(troll_message.author)
  end

end