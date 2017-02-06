require 'date'

Account = Struct.new(:name) do
  def expenses
    @expenses ||= []
  end

  def current_balance
    calculate_balance(expenses)
  end

  def balance_as_of(date)
    calculate_balance(expenses.select { |e| e.date <= date })
  end

  def to_s
    super.sub('struct ', '')
  end
  alias_method :inspect, :to_s

private

  def calculate_balance(expenses)
    expenses.map(&:amount).inject(0, :+)
  end
end

Expense = Struct.new(:date, :amount)
