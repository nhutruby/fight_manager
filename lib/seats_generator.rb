# frozen_string_literal: true

# rubocop:disable Style/Documentation
class SeatsGenerator
  def create_seats(_rows, _seats_in_row, _first_row_number)
    # TODO
    s = ("A".."Z").to_a
    r = []
    (1.._rows).each do |i|
      (_first_row_number.._seats_in_row).each do |j|
        r << i.to_s + s[j - 1]
      end
    end
    r
  end
end
# rubocop:enable Style/Documentation
