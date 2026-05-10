class PasswordValidator
  MIN_LENGTH = 8
  MAX_LENGTH = 32

  def initialize(password)
    @password = password
  end

  def valid?
    long_enough? && not_too_long? && has_number? && has_letter?
  end

  def errors
    messages = []
    messages << "too short"      unless long_enough?
    messages << "too long"       unless not_too_long?
    messages << "needs a number" unless has_number?
    messages << "needs a letter" unless has_letter?
    messages
  end

  private

  def long_enough?
    @password.length >= MIN_LENGTH
  end

  def not_too_long?
    @password.length <= MAX_LENGTH
  end

  def has_number?
    @password.match?(/\d/)
  end

  def has_letter?
    @password.match?(/[a-zA-Z]/)
  end
end
