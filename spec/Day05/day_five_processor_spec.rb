RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require_relative '../../lib/Day05/day_five_processor'

RSpec.describe DayFiveProcessor do
  describe '#part_one' do
    it 'returns correct answer' do
      processor = DayFiveProcessor.new
      list = [0, 3, 0, 1, -3]
      expect(processor.part_one(list)).to be(5)
    end
  end
  describe '#part_two' do
    it 'returns correct answer' do
      processor = DayFiveProcessor.new
      list = [0, 3, 0, 1, -3]
      expect(processor.part_two(list)).to be(10)
    end
  end
end
