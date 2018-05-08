# file name: 8.rb
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

class GakushuTest < Minitest::Test
  def setup
    a = [1, 2, 3]
    @e = a.to_enum
  end

  def test_peek_1
    assert_equal @e.peek, 1
  end

  def test_peek_2
    @e.next
    assert_equal @e.peek, 2
  end

  def test_peek_3
    @e.next
    @e.next
    assert_equal @e.peek, 3
  end

  def test_peek_exception
    @e.next
    @e.next
    @e.next
    assert_raises StopIteration do
      @e.peek
    end
  end

  def test_rewind_1
    @e.next
    @e.next
    @e.rewind
    assert_equal @e.next, 1
  end

  def test_rewind_2
    @e.next
    @e.next
    @e.next
    @e.rewind
    assert_equal @e.next, 1
  end

  def test_each_with_index_1
    index = []
    @e.each_with_index do |n, idx|
      index << idx
    end
    assert_equal index, [0, 1, 2]
  end

  def test_each_with_index_2
    numbers = []
    @e.each_with_index do |n, idx|
      numbers << n
    end
    assert_equal numbers, [1, 2, 3]
  end

  def test_each_with_index_3
    assert_equal @e.each_with_index.class, Enumerator
  end
end
