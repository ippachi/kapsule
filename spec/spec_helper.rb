# frozen_string_literal: true

require "minitest/autorun"
require "tapioca/helpers/test/content"
require "tapioca/helpers/test/template"
require "tapioca/helpers/test/isolation"
require "warning"

Gem.path.each do |path|
  Warning.ignore(//, path)
end
