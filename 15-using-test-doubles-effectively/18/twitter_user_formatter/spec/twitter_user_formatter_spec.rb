require 'twitter_user_formatter'

RSpec.describe TwitterUserFormatter do
  it 'describes their homepage' do
    user = instance_double(Twitter::User,
                           name: 'RSpec',
                           url: 'http://rspec.info')

    formatter = TwitterUserFormatter.new(user)

    expect(formatter.format).to eq("RSpec's website is http://rspec.info")
  end
end
