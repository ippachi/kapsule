# typed: strict
# frozen_string_literal: true

require "simplecov"
require "simplecov-cobertura"
require "sorbet-runtime"
SimpleCov.start do
  T.bind(self, T.class_of(SimpleCov))
  formatter SimpleCov::Formatter::CoberturaFormatter
end

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "kapsule"

require "test-unit"
