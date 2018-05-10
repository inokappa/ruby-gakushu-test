# file name: 10-3.rb
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

class GakushuTest < Minitest::Test
  def test_succ_1
    assert_equal "a".succ, "b"
  end

  def test_succ_2
    assert_equal "aa".succ, "ab"
  end

  def test_succ_3
    assert_equal "aabbcc".succ, "aabbcd"
  end

  def test_succ_4
    assert_equal "100".succ, "101"
  end

  def test_succ_5
    assert_equal "2.5.0".succ, "2.5.1"
  end
end
