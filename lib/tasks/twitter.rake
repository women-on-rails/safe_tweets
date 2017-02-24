namespace :twitter do

  desc "Get latests tweets from a hashtag"
  # CAUTION: don't put any white space
  # As this: rake twitter:get_tweets_from_hashtags['one twp',30]
  task :get_tweets_from_hashtag, [:hashtags, :limit] => :environment do |t, args|
    h = args[:hashtags].split(" ") unless args[:hashtags].nil?
    hashtags = (h || ["Trump"])
    limit = args[:limit].to_i
    hashtags.each do |h|
      begin
        tweets = TWITTER.search("##{h}").take(limit).collect do |tweet|
          Message.create(
            content: tweet.text,
            twitter_id: tweet.id,
            author_id:  tweet.user.id,
            author_slug: tweet.user.screen_name,
            author: tweet.user.screen_name
            )
        end
        puts "\xF0\x9F\x91\x8D\   All good for #{h}!"
      rescue => error
        puts "\xEF\xB8\x8F   #{error.message}"
      end
    end
  end

end
