# file name: 10-1.rb
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

class GakushuTest < Minitest::Test
  def test_string_casecmp_1
    assert "abcdef".casecmp?("abcdeF") 
  end

  def test_string_casecmp_2
    assert "日本a語".casecmp?("日本A語") 
  end

  def test_string_casecmp_3
    refute "abcdef".casecmp?("abdef") 
  end

  def test_string_casecmp_4
    assert_nil "日本a語".encode("Shift_JIS").casecmp?("日本A語") 
  end
end
