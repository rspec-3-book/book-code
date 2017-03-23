require 'twitter'

class TwitterUserFormatter
  def initialize(user)
    @user = user
  end

  def format
    @user.name + "'s website is " + @user.url
  end
end
