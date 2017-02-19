FactoryGirl.define do
  factory :message do
    author "Frédéric Dard"
    author_slug "fredard"
    content "Ce sont toujours les cons qui l'emportent. Question de surnombre !"
    safe true
  end

  factory :empty_message, class: "Message" do 
    author ""
    author_slug ""
    content ""
    safe true
  end

  factory :troll_message, class: "Message" do
    author "Donald Trump"
    author_slug "realDonaldTrump"
    content "This is a message"
    safe false
  end
end