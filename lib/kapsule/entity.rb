# frozen_string_literal: true

# typed: strict

require "sorbet-runtime"

module Kapsule
  class Entity
    extend T::Sig
    extend T::Helpers

    abstract!

    @properties = T.let({}, T::Hash[Symbol, Class])

    class << self
      extend T::Sig
      sig { returns(T::Hash[Symbol, Class]) }
      attr_reader :properties

      sig { params(base: Class).void }
      def inherited(base)
        base.instance_variable_set(:@properties, {})
        super
      end

      sig { params(name: Symbol, type: Class).void }
      def property(name, type)
        @properties[name] = type
      end
    end

    sig { params(properties: T.untyped).void }
    def initialize(**properties); end
  end
end
