feature 'User toggles Safe Mode' do

  let!(:troll_message) { create(:message, :troll_message) }

  scenario 'clicking on a toggle' do
    visit_safe_path
    page.find('a#toggle_safe_mode').click
    expect(page).to have_selector(:css, "#message_#{troll_message.id}")
  end

  scenario 'it shows unsafe tweets' do
    visit_unsafe_path
    expect(page).to have_selector(:css, "#message_#{troll_message.id}")
  end

end