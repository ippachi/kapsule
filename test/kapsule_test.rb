# typed: strict
# frozen_string_literal: true

require "test_helper"

class KapsuleTest < Test::Unit::TestCase
  test "VERSION" do
    assert do
      ::Kapsule.const_defined?(:VERSION)
    end
  end
end
