# frozen_string_literal: true

# typed: true

require "test_helper"
require_relative "./fixtures/user"

module Kapsule
  class EntityTest < Test::Unit::TestCase
    def test_initialize
      assert_nothing_raised do
        User.new
      end
    end

    def test_property
      assert_nothing_raised do
        User.property :name, String
      end
    end

    def test_property_initialize_value
      assert_nothing_raised do
        User.property :name, String
        User.new(name: "user name")
      end
    end
  end
end
