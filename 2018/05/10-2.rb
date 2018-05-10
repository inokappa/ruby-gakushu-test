# file name: 10-2.rb
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

class GakushuTest < Minitest::Test
  def test_string_to_i_1
    assert_equal "10".to_i, 10
  end

  def test_string_to_i_2
    assert_equal "-10".to_i, -10
  end

  def test_string_to_i_3
    assert_equal "".to_i, 0
  end

  def test_string_to_i_4
    assert_equal "2a10b".to_i, 2
  end

  def test_string_to_i_5
    assert_equal "100".to_i(2), 4
  end
end
