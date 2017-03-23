require 'password_strength_validator'

RSpec.describe PasswordStrengthValidator do
  it 'rejects passwords shorter than 8 characters' do
    validator = PasswordStrengthValidator.new('a8E^rd2')
    expect(validator.strong_enough?).to eq false
  end

  it 'accepts passwords 8 characters or longer' do
    validator = PasswordStrengthValidator.new('a8E^rd2i')
    expect(validator.strong_enough?).to eq true
  end
end
