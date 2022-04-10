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
        define_method("#{name}=") do |v|
          T.bind(self, Kapsule::Entity)
          instance_variable_set("@#{name}", self.class.check_param_type(name, v, type))
        end
        private name, "#{name}="
      end

      sig { params(name: Symbol, value: T.untyped, type: T.untyped).returns(T.untyped) }
      def check_param_type(name, value, type)
        return value if value.is_a?(type)

        raise TypeError, "Parameter '#{name}': Expected type #{type}, got type #{value.class} with value #{value}"
      end
    end

    sig { params(properties: T.untyped).void }
    def initialize(properties = {})
      self.class.property_definitions.each do |name, type|
        __send__(:"#{name}=", self.class.check_param_type(name, properties[name], type))
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
