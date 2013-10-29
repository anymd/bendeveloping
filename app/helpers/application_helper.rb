module ApplicationHelper

  def display_date(date)
    date.strftime("%B %-d, %Y")
  end

  def get_tweet
    tweets = []
    Twitter.user_timeline("bendeveloping").each do |tweet|
      tweets << tweet if tweet.text =~ /#upto/
    end
    @tweet = tweets.first
  end

end
