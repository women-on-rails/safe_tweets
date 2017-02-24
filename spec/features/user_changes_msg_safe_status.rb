feature 'User changes msg safe status' do
  let!(:message) { create(:message) }
  let!(:troll_message) { create(:message, :troll_message) }

  scenario 'finds the safe link' do
    visit_unsafe_path
    page.find_by_id("message_#{message.id}").find("a.is_unsafe")
  end

  scenario 'clicking on safe link' do
    visit_unsafe_path
    page.find_by_id("message_#{troll_message.id}").find("a.is_safe").click
    troll_message.reload
    expect(page).not_to have_selector(:css, "#message_#{troll_message.id}")
    expect(troll_message.safe).to be true
  end

  scenario 'finds the unsafe link' do
    visit_unsafe_path
    page.find_by_id("message_#{troll_message.id}").find("a.is_unsafe")
  end

  scenario 'cliking on unsafe link' do
    visit_unsafe_path
    page.find_by_id("message_#{message.id}").find("a.is_unsafe").click
    message.reload
    expect(page).not_to have_selector(:css, "#message_#{message.id}")
    expect(message.safe).to be false
  end

  scenario 'finds the unsafe link anywhere' do
    visit_safe_path
    page.find_by_id("message_#{message.id}").find("a.is_unsafe")
  end

end