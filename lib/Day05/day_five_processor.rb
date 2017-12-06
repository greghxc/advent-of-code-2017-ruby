# frozen_string_literal: true

require 'hamster'

# Advent of Code 2017 - Day 5
class DayFiveProcessor
  def part_one(int_list)
    recursive_processor(Hamster::Vector.new(int_list), 0, 0)
  end

  def recursive_processor(int_list, current_position, iteration)
    return iteration if current_position >= int_list.length
    start_value = int_list[current_position]
    new_value = start_value + 1
    recursive_processor(
      int_list.put(current_position, new_value),
      current_position + start_value,
      iteration + 1
    )
  end
end
