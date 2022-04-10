# typed: strict
# frozen_string_literal: true

begin
  require "kapsule"
rescue LoadError
  return
end

require "tapioca/dsl/compiler"

module Kapsule
  module Tapioca
    module Dsl
      module Compilers
        class Kapsule < ::Tapioca::Dsl::Compiler
          extend T::Sig

          ConstantType = type_member(fixed: T.class_of(::Kapsule::Entity))

          sig { override.void }
          def decorate
            root.create_path(constant) do
              create_entity_class do |klass|
                create_entity_definition(klass)
              end
            end
          end

          sig { override.returns(T::Enumerable[Module]) }
          def self.gather_constants
            descendants_of(::Kapsule::Entity)
          end

          private

          sig { params(blk: T.nilable(T.proc.params(arg0: RBI::Scope).void)).returns(RBI::Scope) }
          def create_entity_class(&blk)
            root.create_class(constant.name.to_s, superclass_name: constant.superclass.to_s, &blk)
          end

          sig { params(klass: RBI::Scope).void }
          def create_entity_definition(klass)
            klass.create_constant("Attributes", value: "T.type_alias { #{constant.property_definitions} }")
            klass.create_method("initialize", parameters: [create_param("attributes", type: "Attributes")],
                                              return_type: "void")
            klass.create_method("serialize", return_type: "Attributes")
            constant.property_definitions.each do |name, type|
              klass.create_method(name.to_s, return_type: type.to_s)
              klass.create_method("#{name}=", parameters: [create_param("value", type: type.to_s)],
                                              return_type: type.to_s)
            end
          end
        end
      end
    end
  end
end
