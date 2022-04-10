# typed: true
# frozen_string_literal: true

require "kapsule/tapioca/dsl/compilers/kapsule"
require "simplecov"
require "sorbet-runtime"
require "tapioca"
require "tapioca/dsl/compiler"
require "tapioca/helpers/test/content"
require "tapioca/helpers/test/dsl_compiler"
require "tapioca/helpers/test/isolation"
require "tapioca/helpers/test/template"
require "tapioca/runtime/reflection"
require "test-unit"
require "warning"
