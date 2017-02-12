FactoryGirl.define do
  factory :message do
    author "Donald Trump"
    author_slug "realDonaldTrump"
    content "This is a message"
  end

  factory :empty_message, class: "Message" do 
    author ""
    author_slug ""
    content ""
  end
end