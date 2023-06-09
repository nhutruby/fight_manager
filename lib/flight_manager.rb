# frozen_string_literal: true

# rubocop:disable Style/Documentation
class FlightManager
  @@flight_manager = []
  def add_new_flight(flight_number, origin, destination)
    h = {}
    h[:flight_number] = flight_number
    h[:origin] = origin
    h[:destination] = destination
    @@flight_manager << h if check = !@@flight_manager.include?(h)
    check
  end

  def find_flights_between(origin, destination, direction_sensitive)
    # TODO
    r = []
    if direction_sensitive == true
      @@flight_manager.each do |fm|
        if fm[:origin] == origin && fm[:destination] == destination
          r << fm
        end
      end
    else
      @@flight_manager.each do |fm|
        if (fm[:origin] == origin && fm[:destination] == destination) or (fm[:origin] == destination && fm[:destination] == origin)
          r << fm
        end
      end
    end
    r
  end
end
# rubocop:enable Style/Documentation
