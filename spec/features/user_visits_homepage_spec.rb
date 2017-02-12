require 'rails_helper'



feature "User visits home page" do 
    let(:message) { FactoryGirl.create(:message) }
    
    scenario "and sees a message" do
        visit root_path
        expect(page).to have_content(message.author)
        expect(page).to have_content(message.content)
    end

end