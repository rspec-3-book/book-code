require 'twitter_user_formatter'
require 'dotenv'
Dotenv.load('api_creds.env')

RSpec.describe TwitterUserFormatter do
  it 'works for real' do
    client = new_client do |c|
      c.consumer_key = ENV['TWITTER_CONSUMER_KEY']
      c.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
      c.oauth_token = ENV['TWITTER_OAUTH_TOKEN']
      c.oauth_token_secret = ENV['TWITTER_OAUTH_TOKEN_SECRET']
    end

    user = client.user('myronmarston')
    formatter = TwitterUserFormatter.new(user)
    expect(formatter.format).to start_with "Myron Marston's website is http"
  end

  if Twitter::Version::MAJOR == 4
    def new_client(&block)
      Twitter.configure(&block)
      Twitter
    end
  else
    def new_client(&block)
      Twitter::REST::Client.new(&block)
    end
  end
end
