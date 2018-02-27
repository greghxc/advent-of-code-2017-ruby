# frozen_string_literal: true

# DayTwo
class DayTwoProcessor
  def part_one(input)
    processor(input) { |l| part_one_line_proc(l) }
  end

  def part_two(input)
    processor(input) { |l| part_two_line_proc(l) }
  end

  private

  def processor(input)
    input
      .map { |line| line.split(/\s+/).map(&:to_i) }
      .map { |line| yield(line) }
      .reduce(:+)
  end

  def part_one_line_proc(nums)
    nums.max - nums.min
  end

  def part_two_line_proc(nums)
    nums
      .map do |base|
        nums
          .select { |div| (base % div).zero? }
          .map { |div| base / div }
          .select { |res| res > 1 }
      end
      .flatten.compact.reduce(:+)
  end
end
