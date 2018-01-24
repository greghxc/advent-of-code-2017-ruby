# frozen_string_literal: true

# DayOne
class DayOneProcessor
  def part_one(input)
    process(input, 1)
  end

  def part_two(input)
    process(input, input.size / 2)
  end

  private

  def process(input, j)
    (0..input.size - 1)
      .map { |i| input[i] == input[(i + j) % input.size] ? input[i].to_i : 0 }
      .reduce(:+)
  end
end
