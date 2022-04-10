# frozen_string_literal: true

# typed: true

require "test_helper"
require_relative "./fixtures/user"

module Kapsule
  class EntityTest < Test::Unit::TestCase
    def setup
      @class = Class.new(Kapsule::Entity)
    end

    def test_initialize
      assert_nothing_raised do
        @class.new
      end
    end

    class PropertyTest < self
      def test_add_property_definitions
        @class.property :name, String
        assert_equal String, @class.property_definitions[:name]
      end

      def test_define_setter_and_getter
        @class.property :name, String
        instance = @class.new(name: "user name")
        name = "changed name"
        instance.name = name
        assert_equal name, instance.name
      end
    end

    def test_serialize
      @class.property :name, String
      name = "user name"
      instance = @class.new(name: name)
      assert_equal({ name: name }, instance.serialize)
    end
  end
end
