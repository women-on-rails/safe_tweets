#TODO: this is not working :(
# No message is created, even if the rake task works.
# I don't know how to test it.

describe "twitter:get_tweets_from_hashtag" do
  include_context "rake"

  it "creates new messages" do
    pending('Method not working for the moment')
    msg = Message.all.count
    subject.invoke
    new_msg = Message.all.count
    expect(msg).to be > new_msg
  end
end