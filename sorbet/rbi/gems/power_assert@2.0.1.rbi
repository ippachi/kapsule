# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `power_assert` gem.
# Please instead update this file by running `bin/tapioca gem power_assert`.

module PowerAssert
  class << self
    def app_caller_locations; end
    def app_context?; end
    def configuration; end
    def configure; end
    def start(assertion_proc_or_source, assertion_method: T.unsafe(nil), source_binding: T.unsafe(nil)); end
    def trace(frame); end

    private

    def clear_global_method_cache; end
    def internal_file?(file); end
    def lib_dir(obj, mid, depth); end
    def setup_internal_lib_dir(lib, mid, depth, lib_obj = T.unsafe(nil)); end
  end
end

class PowerAssert::BlockContext < ::PowerAssert::Context
  def initialize(assertion_proc_or_source, assertion_method, source_binding); end

  def yield; end

  private

  def invoke_yield; end
end

class PowerAssert::Configuration < ::Struct
  def colorize_message=(bool); end
  def inspector=(inspector); end
  def lazy_inspection=(bool); end
end

class PowerAssert::Context
  def initialize(base_caller_length); end

  def message; end
  def message_proc; end

  private

  def build_assertion_message(parser, return_values); end
  def column2display_offset(str); end
  def detect_path(parser, return_values); end
  def encoding_safe_rstrip(str); end
  def enum_count_by(enum, &blk); end
  def find_all_identified_calls(return_values, path); end
  def fired?; end
  def uniq_calls(paths); end
end

class PowerAssert::Context::Value < ::Struct
  def column; end
  def column=(_); end
  def display_offset; end
  def display_offset=(_); end
  def lineno; end
  def lineno=(_); end
  def name; end
  def name=(_); end
  def value; end
  def value=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

module PowerAssert::Empty; end
PowerAssert::INTERNAL_LIB_DIRS = T.let(T.unsafe(nil), Hash)

class PowerAssert::InspectedValue
  def initialize(value); end

  def inspect; end
end

class PowerAssert::Inspector
  def initialize(value, indent); end

  def inspect; end
end

PowerAssert::POWER_ASSERT_LIB_DIR = T.let(T.unsafe(nil), String)

class PowerAssert::Parser
  def initialize(line, path, lineno, binding, assertion_method_name = T.unsafe(nil), assertion_proc = T.unsafe(nil)); end

  def binding; end
  def call_paths; end
  def idents; end
  def line; end
  def lineno; end
  def method_id_set; end
  def path; end

  private

  def collect_paths(idents, prefixes = T.unsafe(nil), index = T.unsafe(nil)); end
  def extract_idents(sexp); end
  def handle_columnless_ident(left_idents, mid, right_idents, with_safe_op = T.unsafe(nil)); end
  def slice_expression(str); end
  def str_indices(str, re, offset, limit); end
  def valid_syntax?(str); end
end

PowerAssert::Parser::AND_OR_OPS = T.let(T.unsafe(nil), Array)
class PowerAssert::Parser::Branch < ::Array; end
PowerAssert::Parser::DUMMY = T.let(T.unsafe(nil), PowerAssert::Parser::DummyParser)

class PowerAssert::Parser::DummyParser < ::PowerAssert::Parser
  def initialize; end

  def call_paths; end
  def idents; end
end

class PowerAssert::Parser::Ident < ::Struct
  def column; end
  def column=(_); end
  def name; end
  def name=(_); end
  def type; end
  def type=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

PowerAssert::Parser::MID2SRCTXT = T.let(T.unsafe(nil), Hash)

class PowerAssert::SafeInspectable
  def initialize(value); end

  def inspect; end
end

class PowerAssert::TraceContext < ::PowerAssert::Context
  def initialize(binding); end

  def disable; end
  def enable; end
  def enabled?; end
end

PowerAssert::VERSION = T.let(T.unsafe(nil), String)