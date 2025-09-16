require_relative "count_word_frequency"
require "minitest/autorun"

class TestCountFrequency < Minitest::Test 
  def test_empty_list
    assert_equal({}, count_word_frequency([]))
  end
  def test_single_word
    assert_equal({"cat" => 1}, count_word_frequency(["cat"]))
  end
end