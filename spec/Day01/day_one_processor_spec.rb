# frozen_string_literal: true

require_relative '../../lib/Day01/day_one_processor'

RSpec.describe DayOneProcessor do
  describe '#part_one' do
    it 'returns correct answer' do
      processor = DayOneProcessor.new
      expect(processor.part_one('1122')).to be(3)
      expect(processor.part_one('1111')).to be(4)
      expect(processor.part_one('1234')).to be(0)
      expect(processor.part_one('91212129')).to be(9)
    end
  end
  describe '#part_two' do
    it 'returns correct answer' do
      processor = DayOneProcessor.new
      expect(processor.part_two('1212')).to be(6)
      expect(processor.part_two('1221')).to be(0)
      expect(processor.part_two('123425')).to be(4)
      expect(processor.part_two('123123')).to be(12)
      expect(processor.part_two('12131415')).to be(4)
    end
  end
end
