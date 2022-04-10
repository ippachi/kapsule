# frozen_string_literal: true

# typed: strict

require "tapioca"
require "tapioca/helpers/test/dsl_compiler"
require_relative "../../../spec_helper"
require "tapioca/runtime/reflection"
require "tapioca/dsl/compiler"
require_relative "../../../../lib/kapsule/tapioca/dsl/compilers/kapsule"

module Kapsule
  module Tapioca
    module Dsl
      module Compilers
        class KapsuleSpec < Minitest::Spec
          include ::Tapioca::Helpers::Test::DslCompiler

          describe Kapsule do
            before do
              use_dsl_compiler(Kapsule)
            end

            describe "#initialize" do
              it "gathers no constants if there are no Kapsule::Entity class" do
                assert_empty(gathered_constants)
              end

              it "gathers only Kapsule::Entity constants" do
                add_ruby_file("content.rb", <<~RUBY)
                  class User < Kapsule::Entity
                  end
                  class Product
                  end
                RUBY

                assert_equal(%w[User], gathered_constants)
              end
            end

            describe "#decorate" do
              it "generates RBI file with property" do
                add_ruby_file("conversation.rb", <<~RUBY)
                  class User < Kapsule::Entity
                    property :name, String
                    property :email, String
                  end
                RUBY

                expected = <<~RBI
                  # typed: strong

                  class User
                    sig { params(attributes: Attributes).void }
                    def initialize(attributes); end

                    sig { returns(String) }
                    def email; end

                    sig { params(value: String).returns(String) }
                    def email=(value); end

                    sig { returns(String) }
                    def name; end

                    sig { params(value: String).returns(String) }
                    def name=(value); end

                    sig { returns(Attributes) }
                    def serialize; end

                    Attributes = T.type_alias { {:name=>String, :email=>String} }
                  end
                RBI
                assert_equal(expected, rbi_for(:User))
              end
            end
          end
        end
      end
    end
  end
end
