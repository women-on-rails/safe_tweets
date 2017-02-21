FactoryGirl.define do
  factory :message do
    author "Frédéric Dard"
    author_slug "fredard"
    content "Ce sont toujours les cons qui l'emportent. Question de surnombre !"
    safe true

    trait :unsafe do
      safe false
    end

    trait :empty_message do
      author ""
      author_slug ""
      content ""
    end

    trait :troll_message do
      author "Donald Trump"
      author_slug "realDonaldTrump"
      content "This is a message"
      safe false
    end

  end
end