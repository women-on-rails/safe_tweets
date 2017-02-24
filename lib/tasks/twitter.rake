namespace :twitter do
  desc "Get latests tweets from a hashtag"
  task get_tweets_from_hashtag: :environment do
      hashtag = "trump"
      #TODO: pass the hastag as a parameter

      # get hashtag
      begin
        tweets = TWITTER.search("##{hashtag}").take(20).collect do |tweet|
          Message.create(
            content: tweet.text,
            twitter_id: tweet.id,
            author_id:  tweet.user.id,
            author_slug: tweet.user.screen_name,
            author: tweet.user.screen_name
            )
        end
        puts "\xF0\x9F\x91\x8D\   All good!"
      rescue => error
        puts "\xEF\xB8\x8F   #{error.message}"
      end
  end

end
