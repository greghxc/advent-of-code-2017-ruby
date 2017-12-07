RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require_relative './day_five_processor.rb'

processor = DayFiveProcessor.new
input = File.readlines(ARGV[0]).map(&:chomp).map(&:to_i)

puts processor.part_one(input)
puts processor.part_two(input)
