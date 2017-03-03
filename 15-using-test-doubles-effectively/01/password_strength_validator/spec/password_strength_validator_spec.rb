require 'password_strength_validator'

RSpec.describe PasswordStrengthValidator do
  it 'is not strong enough when the password is too short' do
    validator = PasswordStrengthValidator.new('a8E^rd2')
    expect(validator.strong_enough?).to eq false
  end

  it 'is strong enough when the password is long enough' do
    validator = PasswordStrengthValidator.new('a8E^rd2i')
    expect(validator.strong_enough?).to eq true
  end
end
