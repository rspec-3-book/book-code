require 'password_strength_validator'

RSpec.describe PasswordStrengthValidator do
  before do
    allow(Acme::Config).to receive(:min_password_length).and_return(6)
  end

  it 'rejects passwords shorter than the configured length' do
    validator = PasswordStrengthValidator.new('a8E^r')
    expect(validator.strong_enough?).to eq false
  end

  it 'accepts passwords that satisfy the configured length' do
    validator = PasswordStrengthValidator.new('a8E^rd')
    expect(validator.strong_enough?).to eq true
  end
end
