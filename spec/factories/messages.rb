FactoryGirl.define do
  factory :message do
    author "Frédéric Dard"
    author_slug "fredard"
    content "Ce sont toujours les cons qui l'emportent. Question de surnombre !"
    safe true

    trait :empty_message do
      author ""
      author_slug ""
      content ""

    trait :troll_message do
      author "Donald Trump"
      author_slug "realDonaldTrump"
      content "Robert I'm getting a lot of heat for saying you should dump Kristen- but I'm right. If you saw the Miss Universe girls you would reconsider."
      safe false
    end

  end
end