require 'date'

Calendar = Struct.new(:date_string) do
  def on_weekend?
    Date.parse(date_string).saturday?
  end
end

RSpec.describe Calendar do
  let(:sunday_date) { Calendar.new('Sun, 14 Feb 2016') }

  it 'considers sundays to be on the weekend' do
    expect(sunday_date.on_weekend?).to be true
  end
end
