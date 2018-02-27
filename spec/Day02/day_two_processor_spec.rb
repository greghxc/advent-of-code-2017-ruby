# frozen_string_literal: true

require_relative '../../lib/Day02/day_two_processor'

RSpec.describe DayTwoProcessor do
  describe '#part_one' do
    it 'returns correct answer' do
      processor = DayTwoProcessor.new
      input = File.readlines(
        File.join(File.dirname(__FILE__), 'input.txt')
      ).map(&:chomp)
,     expect(processor.part_one(input)).to eq(18)
    end
  end
  describe '#part_two' do
    it 'returns correct answer' do
      processor = DayTwoProcessor.new
      input = File.readlines(
        File.join(File.dirname(__FILE__), 'input2.txt')
      ).map(&:chomp)
      expect(processor.part_two(input)).to eq(9)
    end
  end
end
