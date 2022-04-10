# frozen_string_literal: true

# typed: true

require "test_helper"

module Kapsule
  class EntityTest < Test::Unit::TestCase
    extend T::Sig
    def setup
      @class = T.let(T.unsafe(Class.new(Kapsule::Entity)), T.nilable(T.class_of(Kapsule::Entity)))
      target_class.property :name, String
      target_class.property :email, String
    end

    sig { returns(T.class_of(Kapsule::Entity)) }
    def target_class
      T.must(@class)
    end

    def test_initialize
      assert_nothing_raised do
        target_class.new(name: "name", email: "email")
      end
    end

    def test_initialize_with_invalid_argument_type
      assert_raises TypeError do
        target_class.new(name: 1, email: "email")
      end
    end

    def test_initialize_with_not_enough_argument
      assert_raises TypeError do
        target_class.new(name: "name")
      end
    end

    def test_property_add_property_definitions
      assert_equal String, target_class.property_definitions[:name]
    end

    def test_serialize
      name = "name"
      email = "email"
      instance = target_class.new(name: name, email: email)
      assert_equal({ name: name, email: email }, instance.serialize)
    end
  end
end
