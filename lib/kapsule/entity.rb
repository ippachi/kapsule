# frozen_string_literal: true

# typed: strict

require "sorbet-runtime"

module Kapsule
  class Entity
    extend T::Sig
    extend T::Helpers

    abstract!

    @property_definitions = T.let({}, T::Hash[Symbol, Class])

    class << self
      extend T::Sig
      sig { returns(T::Hash[Symbol, Class]) }
      attr_reader :property_definitions

      sig { params(base: Class).void }
      def inherited(base)
        base.instance_variable_set(:@property_definitions, {})
        super
      end

      sig { params(name: Symbol, type: Class).void }
      def property(name, type)
        @property_definitions[name] = type
        define_method(name) { instance_variable_get("@#{name}") }
        define_method("#{name}=") { |v| instance_variable_set("@#{name}", v) }
      end
    end

    sig { params(properties: T.untyped).void }
    def initialize(properties = {})
      self.class.property_definitions.each do |name, _type|
        __send__(:"#{name}=", properties[name])
      end
    end

    sig { returns(T::Hash[Symbol, T.untyped]) }
    def serialize
      self.class.property_definitions.each_with_object({}) do |(name, _type), result|
        result[name.to_sym] = __send__(name.to_sym)
      end
    end
  end
end
