# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/1'

class SonarSweepTest < Minitest::Test
  def test_that_there_are_the_right_number_of_elements
    ss = SonarSweep.new("input.txt")
    assert ss.measurements.count == 2000
  end

  def test_that_number_of_increases_works
    ss = SonarSweep.new("input.txt")
    assert ss.number_of_increases == 1228
  end
end
