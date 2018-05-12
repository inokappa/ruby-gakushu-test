# file name: 12.rb
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

class Cls
  CONST = 'class_eval dayo'
end

module Mod
  Cls.class_eval "def foo; CONST; end"
end

module Mod
  Cls.class_eval do
    def bar
      CONST
    end
  end
end

class GakushuTest < Minitest::Test
  def test_const_reference_1
    assert_equal Cls.new.foo, 'class_eval dayo'
  end

  def test_const_reference_2
    assert_raises NameError do
      Cls.new.bar
    end
  end
end
