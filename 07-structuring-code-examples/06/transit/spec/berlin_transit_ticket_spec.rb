require 'berlin_transit_ticket'

# We disable line length because the labels cause lines to be too long
# but they do not render in the book so it causes no problems.
RSpec.describe BerlinTransitTicket do
  let(:ticket) { BerlinTransitTicket.new }

  before do
    # These values depend on `let` definitions
    # defined in the nested contexts below!
    #
    ticket.starting_station = starting_station
    ticket.ending_station   = ending_station
  end

  let(:fare) { ticket.fare }

  context 'when starting in zone A' do
    let(:starting_station) { 'Bundestag' }

    context 'and ending in zone B' do
      let(:ending_station) { 'Leopoldplatz' }

      it 'costs €2.70' do
        expect(fare).to eq 2.7
      end
    end

    context 'and ending in zone C' do
      let(:ending_station) { 'Birkenwerder' }

      it 'costs €3.30' do
        expect(fare).to eq 3.3
      end
    end
  end
end
