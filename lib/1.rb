# frozen_string_literal: true

class SonarSweep
  def initialize(input)
    @input = input
  end

  def measurements
    file_contents = File.read("#{File.dirname(__FILE__)}/#{@input}")
    numbers = file_contents.scan(/\d+/)
    numbers.collect! &:to_i
    return numbers
  end

  def number_of_increases
    number_of_increases = 0
    measurement = measurements[0]

    measurements.each do |x| 
      number_of_increases += 1 if x > measurement 
      measurement = x
    end

    return number_of_increases
  end

  
end


puts SonarSweep.new("input.txt").number_of_increases
