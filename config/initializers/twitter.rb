Twitter.configure do |config|
  config.consumer_key = ENV["TWITTER_KEY"]
  config.consumer_secret = ENV["TWITTER_SECRET"]
  config.oauth_token = ENV["TWITTER_AUTH_TOKEN"]
  config.oauth_token_secret = ENV["TWITTER_AUTH_TOKEN_SECRET"]
end