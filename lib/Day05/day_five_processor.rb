require 'hamster'

# Advent of Code 2017 - Day 5
class DayFiveProcessor
  def part_one(int_list)
    calc = Proc.new { |orig| orig + 1 }
    recursive_processor(calc, Hamster::Vector.new(int_list), 0, 0)
  end

  def part_two(int_list)
    calc = Proc.new { |orig| orig >= 3 ? orig - 1 : orig + 1 }
    recursive_processor(calc, Hamster::Vector.new(int_list), 0, 0)
  end

  def recursive_processor(calc, int_list, current_position, iteration)
    return iteration if current_position >= int_list.length
    recursive_processor(
      calc,
      int_list.put(current_position, calc.call(int_list[current_position])),
      current_position + int_list[current_position],
      iteration + 1
    )
  end
end
