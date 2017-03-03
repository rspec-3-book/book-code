require 'configuration'

class PasswordStrengthValidator

  attr_reader :password

  def initialize(password)
    @password = password
  end

  def strong_enough?
    return false unless password.length >= Acme::Config.min_password_length

    # ... more validations ...
    true
  end
end
