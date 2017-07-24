require 'date'

class DataGenerator
  def boolean_value
    [true, false].sample
  end

  def email_address_value
    domain = %w[ gmail.com yahoo.com aol.com hotmail.com ].sample
    username_characters = (0..9).to_a + ('a'..'z').to_a + ('A'..'Z').to_a
    username_length = rand(5) + 3
    username = Array.new(username_length) { username_characters.sample }.join

    "#{username}@#{domain}"
  end

  def date_value
    Date.new(
      (1950..1999).to_a.sample,
      (1..12).to_a.sample,
      (1..28).to_a.sample,
    )
  end

  def user_record
    {
      email_address: email_address_value,
      date_of_birth: date_value,
      active:        boolean_value
    }
  end

  def users(count)
    Array.new(count) { user_record }
  end
end

RSpec.configure do |c|
  c.fail_fast = true
  c.formatter = 'documentation'
  c.color     = true
  c.order     = :defined
end

RSpec.describe DataGenerator do
  def be_a_boolean
    # Ruby has no Boolean class so this doesn't work.
    # Is there a way we can use `or` to combine two matchers instead?
    be_a(Boolean)
  end

  it "generates boolean values" do
    value = DataGenerator.new.boolean_value
    expect(value).to be_a_boolean
  end

  def be_a_date_before_2000
    # Combine the `be_a(klass)` matcher with the `be < value` matcher
    # to create a matcher that matches dates before January 1st, 2000.
    fill_me_in
  end

  it "generates dates before January 1st, 2000" do
    value = DataGenerator.new.date_value
    expect(value).to be_a_date_before_2000
  end

  def be_an_email_address
    # Pass a simple regex to `match` to define a matcher for email addresses.
    # Don't worry about complete email validation; something very simple is fine.
    match(/some regex/)
  end

  it "generates email addresses" do
    value = DataGenerator.new.email_address_value
    expect(value).to be_an_email_address
  end

  def match_the_shape_of_a_user_record
    # Use `be_a_boolean`, `be_a_date_before_2000` and `be_an_email_address`
    # in the hash passed to `match` below to define this matcher.
    match(fill_this_in: "with a hash describing the shape of the data")
  end

  it "generates user records" do
    user = DataGenerator.new.user_record
    expect(user).to match_the_shape_of_a_user_record
  end

  def all_match_the_shape_of_a_user_record
    # Combine the `all` matcher and `match_the_shape_of_a_user_record` here.
    fill_me_in
  end

  it "generates a list of user records" do
    users = DataGenerator.new.users(4)
    expect(users).to all_match_the_shape_of_a_user_record
  end
end
