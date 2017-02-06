RSpec::Matchers.define :have_no_tickets_sold do
  match { |event| event.tickets_sold.count.zero? }

  failure_message do |event|
    super() + ", but had #{event.tickets_sold.count}"
  end
end

RSpec::Matchers.define :be_sold_out do
  match { |event| event.tickets_sold.count == event.capacity }

  failure_message do |event|
    unsold_count = event.capacity - event.tickets_sold.count
    super() + ", but had #{unsold_count} unsold tickets"
  end
end
