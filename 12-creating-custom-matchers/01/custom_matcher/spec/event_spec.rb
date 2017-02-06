require 'event'

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

RSpec.describe Event do
  let(:art_show) { Event.new('Art Show', 100) }

  let(:u2_concert) do
    Event.new('U2 Concert', 10_000).tap do |e|
      10_000.times { e.purchase_ticket_for(:a_fan) }
    end
  end

  it 'tracks tickets sold' do
    expect(art_show.tickets_sold.count).to eq(0)
    expect(u2_concert.tickets_sold.count).to eq(u2_concert.capacity)

    expect(art_show).to have_no_tickets_sold
    expect(u2_concert).to be_sold_out
  end

  example 'no tickets sold failure (original matcher)', :old_fail_1 do
    art_show.purchase_ticket_for(:someone)
    art_show.purchase_ticket_for(:someone)

    expect(art_show.tickets_sold.count).to eq(0)
  end

  example 'no tickets sold failure (new matcher)', :new_fail_1 do
    art_show.tickets_sold << :someone << :someone
    expect(art_show).to have_no_tickets_sold
  end

  example 'not a sell out failure (original)', :old_fail_2 do
    u2_concert.tickets_sold.slice!(1..100)
    expect(u2_concert.tickets_sold.count).to eq(u2_concert.capacity)
  end

  example 'not a sell out failure (new matcher)', :new_fail_2 do
    u2_concert.tickets_sold.slice!(1..100)
    expect(u2_concert).to be_sold_out
  end
end
