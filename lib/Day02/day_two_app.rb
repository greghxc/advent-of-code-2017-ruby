# frozen_string_literal: true

require_relative './day_two_processor'

processor = DayTwoProcessor.new

input = File.readlines(
  File.join(File.dirname(__FILE__), 'input.txt')
).map(&:chomp)

puts processor.part_one(input)
puts processor.part_two(input)
