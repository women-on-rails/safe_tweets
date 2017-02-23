require 'rails_helper'

feature "User toggles Safe mode" do
  let(:message) { create(:message) }
  let(:troll_message) { create(:message, :troll_message) }

  scenario "it shows unsafe tweets" do
    visit root_path(safe: false)
    expect(page).to have_content(troll_message.author)
  end

end

feature "User says a message" do
  let!(:message) { create(:message) }

  scenario "is unsafe" do
    visit(root_path)
    page.find_by_id("message_#{message.id}", visible: false)
  end

end
