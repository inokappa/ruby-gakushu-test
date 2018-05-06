require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]
 
class GakushuTest < Minitest::Test
  def test_time_tv_sec
    assert_equal Time.new(2017, 11, 12, 1, 2, 3).tv_sec.class, Integer
  end

  def test_time_to_i
    assert_equal Time.new(2017, 11, 12, 1, 2, 3).to_i.class, Integer
  end

  def test_time_zone
    assert_equal Time.now.zone, 'JST'
  end

  def test_time_utc_offset
    assert_equal Time.now.utc_offset, 32400
  end

  def test_time_gmt_offset
    assert_equal Time.now.gmt_offset, 32400
  end

  def test_time_gmtoff
    assert_equal Time.now.gmtoff, 32400
  end
end
