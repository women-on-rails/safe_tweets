
feature 'User changes msg safe status' do
  let!(:message) { create(:message) }
  let!(:troll_message) { create(:message, :troll_message) }

  scenario 'finds the unsafe link' do
    visit_unsafe_path
    page.find(dom_id(message)).find("a.is_unsafe")
  end

  scenario 'clicking on safe link' do
    visit_unsafe_path
    page.find(dom_id(troll_message)).find("a.is_safe").click
    troll_message.reload
    expect(troll_message.kind).to eq('safe')
    expect(page).to have_selector(:css, dom_id(troll_message))
  end

  scenario 'finds the safe link' do
    visit_unsafe_path
    page.find(dom_id(troll_message)).find("a.is_safe")
  end

  scenario 'cliking on unsafe link' do
    visit_unsafe_path
    page.find(dom_id(message)).find("a.is_unsafe").click
    message.reload
    visit_safe_path
    expect(page).not_to have_selector(:css, dom_id(message))
    expect(message.kind).to eq('unsafe')
  end

  scenario 'finds the unsafe link anywhere' do
    visit_safe_path
    page.find(dom_id(message)).find("a.is_unsafe")
  end

end