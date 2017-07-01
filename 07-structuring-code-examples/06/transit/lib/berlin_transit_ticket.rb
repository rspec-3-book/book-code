class BerlinTransitTicket
  attr_accessor :starting_station, :ending_station

  def fare
    if starting_station == 'Bundestag' && ending_station == 'Leopoldplatz'
      2.7
    elsif starting_station == 'Bundestag' && ending_station == 'Birkenwerder'
      3.3
    else
      raise 'price has not been defined'
    end
  end
end
