# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rubocop-minitest` gem.
# Please instead update this file by running `bin/tapioca gem rubocop-minitest`.

module RuboCop; end
module RuboCop::Cop; end

module RuboCop::Cop::ArgumentRangeHelper
  include ::RuboCop::Cop::RangeHelp

  private

  def all_arguments_range(node); end
  def first_and_second_arguments_range(node); end
  def first_argument_range(node); end
end

module RuboCop::Cop::InDeltaMixin
  def on_send(node); end

  private

  def assertion_method; end
  def build_good_method(expected, actual, message); end
end

RuboCop::Cop::InDeltaMixin::MSG = T.let(T.unsafe(nil), String)
module RuboCop::Cop::Minitest; end

class RuboCop::Cop::Minitest::AssertEmpty < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::MinitestCopRule
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def enclosed_in_redundant_parentheses?(node); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::AssertEmpty::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertEmpty::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertEmptyLiteral < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::AutoCorrector

  def assert_equal_with_empty_literal(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

RuboCop::Cop::Minitest::AssertEmptyLiteral::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertEmptyLiteral::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertEqual < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::MinitestCopRule
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def enclosed_in_redundant_parentheses?(node); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::AssertEqual::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertEqual::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertInDelta < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::InDeltaMixin
  extend ::RuboCop::Cop::AutoCorrector

  def equal_floats_call(param0 = T.unsafe(nil)); end
end

RuboCop::Cop::Minitest::AssertInDelta::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertIncludes < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::MinitestCopRule
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def enclosed_in_redundant_parentheses?(node); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::AssertIncludes::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertIncludes::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertInstanceOf < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::MinitestCopRule
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def enclosed_in_redundant_parentheses?(node); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::AssertInstanceOf::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertInstanceOf::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertKindOf < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::MinitestCopRule
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def enclosed_in_redundant_parentheses?(node); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::AssertKindOf::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertKindOf::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertMatch < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::MinitestCopRule
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def enclosed_in_redundant_parentheses?(node); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::AssertMatch::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertMatch::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertNil < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  include ::RuboCop::Cop::Minitest::NilAssertionHandleable
  extend ::RuboCop::Cop::AutoCorrector

  def nil_assertion(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def assertion_type; end
end

RuboCop::Cop::Minitest::AssertNil::ASSERTION_TYPE = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertNil::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertOutput < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::MinitestExplorationHelpers

  def on_gvasgn(node); end

  private

  def find_test_case(node); end
  def references_gvar?(assertion, gvar_name); end
end

RuboCop::Cop::Minitest::AssertOutput::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertOutput::OUTPUT_GLOBAL_VARIABLES = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertPathExists < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def assert_file_exists(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def build_good_method(path, message); end
end

RuboCop::Cop::Minitest::AssertPathExists::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertPathExists::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertPredicate < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  include ::RuboCop::Cop::Minitest::PredicateAssertionHandleable
  extend ::RuboCop::Cop::AutoCorrector

  private

  def assertion_type; end
end

RuboCop::Cop::Minitest::AssertPredicate::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertPredicate::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertRespondTo < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::MinitestCopRule
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def enclosed_in_redundant_parentheses?(node); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::AssertRespondTo::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertRespondTo::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertSilent < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def assert_silent_candidate?(param0 = T.unsafe(nil)); end
  def on_block(node); end

  private

  def empty_string?(node); end
end

RuboCop::Cop::Minitest::AssertSilent::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Minitest::AssertTruthy < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::AutoCorrector

  def assert_equal_with_truthy(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

RuboCop::Cop::Minitest::AssertTruthy::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertTruthy::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertWithExpectedArgument < ::RuboCop::Cop::Base
  def assert_with_two_arguments?(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

RuboCop::Cop::Minitest::AssertWithExpectedArgument::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::AssertWithExpectedArgument::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::AssertionInLifecycleHook < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::MinitestExplorationHelpers

  def on_class(class_node); end
end

RuboCop::Cop::Minitest::AssertionInLifecycleHook::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Minitest::DuplicateTestRun < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::MinitestExplorationHelpers

  def on_class(class_node); end

  private

  def parent_class_has_test_methods?(class_node); end
  def test_methods?(class_node); end
end

RuboCop::Cop::Minitest::DuplicateTestRun::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Minitest::GlobalExpectations < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::ConfigurableEnforcedStyle
  extend ::RuboCop::Cop::AutoCorrector

  def block_receiver?(param0 = T.unsafe(nil)); end
  def on_send(node); end
  def value_receiver?(param0 = T.unsafe(nil)); end

  private

  def method_allowed?(method); end
  def preferred_method; end
  def preferred_receiver(node); end
  def register_offense(node, method); end
end

RuboCop::Cop::Minitest::GlobalExpectations::BLOCK_MATCHERS = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Minitest::GlobalExpectations::DSL_METHODS = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Minitest::GlobalExpectations::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::GlobalExpectations::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Minitest::GlobalExpectations::VALUE_MATCHERS = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::LiteralAsActualArgument < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, expected, actual, message); end
  def on_send(node); end
end

RuboCop::Cop::Minitest::LiteralAsActualArgument::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::LiteralAsActualArgument::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::MultipleAssertions < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::ConfigurableMax
  include ::RuboCop::Cop::MinitestExplorationHelpers

  def on_class(class_node); end

  private

  def assertions_count(node); end
  def max_assertions; end
end

RuboCop::Cop::Minitest::MultipleAssertions::MSG = T.let(T.unsafe(nil), String)

module RuboCop::Cop::Minitest::NilAssertionHandleable
  private

  def autocorrect(corrector, node, actual); end
  def build_message(node, actual, message); end
  def comparison_or_predicate_assertion_method?(node); end
  def register_offense(node, actual, message); end
end

RuboCop::Cop::Minitest::NilAssertionHandleable::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Minitest::NoAssertions < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::MinitestExplorationHelpers

  def on_class(class_node); end

  private

  def assertions_count(node); end
end

RuboCop::Cop::Minitest::NoAssertions::MSG = T.let(T.unsafe(nil), String)

module RuboCop::Cop::Minitest::PredicateAssertionHandleable
  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::PredicateAssertionHandleable::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::PredicateAssertionHandleable::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::RefuteEmpty < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::MinitestCopRule
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def enclosed_in_redundant_parentheses?(node); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::RefuteEmpty::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::RefuteEmpty::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::RefuteEqual < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::AutoCorrector

  def assert_not_equal(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def original_usage(first_part, custom_message); end
  def preferred_usage(first_arg, second_arg, custom_message = T.unsafe(nil)); end
  def process_not_equal(node); end
end

RuboCop::Cop::Minitest::RefuteEqual::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::RefuteEqual::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::RefuteFalse < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::AutoCorrector

  def assert_equal_with_false(param0 = T.unsafe(nil)); end
  def assert_with_bang_argument(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def autocorrect(corrector, node, actual); end
end

RuboCop::Cop::Minitest::RefuteFalse::MSG_FOR_ASSERT = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::RefuteFalse::MSG_FOR_ASSERT_EQUAL = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::RefuteFalse::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::RefuteInDelta < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::InDeltaMixin
  extend ::RuboCop::Cop::AutoCorrector

  def equal_floats_call(param0 = T.unsafe(nil)); end
end

RuboCop::Cop::Minitest::RefuteInDelta::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::RefuteIncludes < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::MinitestCopRule
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def enclosed_in_redundant_parentheses?(node); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::RefuteIncludes::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::RefuteIncludes::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::RefuteInstanceOf < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::MinitestCopRule
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def enclosed_in_redundant_parentheses?(node); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::RefuteInstanceOf::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::RefuteInstanceOf::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::RefuteKindOf < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::MinitestCopRule
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def enclosed_in_redundant_parentheses?(node); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::RefuteKindOf::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::RefuteKindOf::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::RefuteMatch < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::MinitestCopRule
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def enclosed_in_redundant_parentheses?(node); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::RefuteMatch::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::RefuteMatch::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::RefuteNil < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  include ::RuboCop::Cop::Minitest::NilAssertionHandleable
  extend ::RuboCop::Cop::AutoCorrector

  def nil_refutation(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def assertion_type; end
end

RuboCop::Cop::Minitest::RefuteNil::ASSERTION_TYPE = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::RefuteNil::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::RefutePathExists < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def on_send(node); end
  def refute_file_exists(param0 = T.unsafe(nil)); end

  private

  def build_good_method(path, message); end
end

RuboCop::Cop::Minitest::RefutePathExists::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::RefutePathExists::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::RefutePredicate < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  include ::RuboCop::Cop::Minitest::PredicateAssertionHandleable
  extend ::RuboCop::Cop::AutoCorrector

  private

  def assertion_type; end
end

RuboCop::Cop::Minitest::RefutePredicate::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::RefutePredicate::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::RefuteRespondTo < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::ArgumentRangeHelper
  extend ::RuboCop::Cop::MinitestCopRule
  extend ::RuboCop::Cop::AutoCorrector

  def autocorrect(corrector, node, arguments); end
  def on_send(node); end

  private

  def correct_receiver(receiver); end
  def enclosed_in_redundant_parentheses?(node); end
  def new_arguments(arguments); end
  def offense_message(arguments); end
  def peel_redundant_parentheses_from(arguments); end
end

RuboCop::Cop::Minitest::RefuteRespondTo::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Minitest::RefuteRespondTo::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Minitest::TestMethodName < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::MinitestExplorationHelpers
  include ::RuboCop::Cop::DefNode
  extend ::RuboCop::Cop::AutoCorrector

  def on_class(class_node); end

  private

  def class_elements(class_node); end
  def offense?(node); end
  def public?(node); end
  def test_method_name?(node); end
end

RuboCop::Cop::Minitest::TestMethodName::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Minitest::UnreachableAssertion < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::MinitestExplorationHelpers

  def on_block(node); end
end

RuboCop::Cop::Minitest::UnreachableAssertion::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Minitest::UnspecifiedException < ::RuboCop::Cop::Base
  def on_block(block_node); end

  private

  def unspecified_exception?(node); end
end

RuboCop::Cop::Minitest::UnspecifiedException::MSG = T.let(T.unsafe(nil), String)

module RuboCop::Cop::MinitestCopRule
  def define_rule(assertion_method, target_method:, preferred_method: T.unsafe(nil), inverse: T.unsafe(nil)); end
end

module RuboCop::Cop::MinitestExplorationHelpers
  extend ::RuboCop::AST::NodePattern::Macros

  private

  def assertion_method?(node); end
  def assertions(def_node); end
  def class_def_nodes(class_node); end
  def lifecycle_hook_method?(node); end
  def lifecycle_hooks(class_node); end
  def test_case?(node); end
  def test_case_name?(name); end
  def test_cases(class_node); end
  def test_class?(class_node); end
end

RuboCop::Cop::MinitestExplorationHelpers::ASSERTION_PREFIXES = T.let(T.unsafe(nil), Array)
RuboCop::Cop::MinitestExplorationHelpers::LIFECYCLE_HOOK_METHODS = T.let(T.unsafe(nil), Set)
module RuboCop::Minitest; end
RuboCop::Minitest::CONFIG = T.let(T.unsafe(nil), Hash)
RuboCop::Minitest::CONFIG_DEFAULT = T.let(T.unsafe(nil), Pathname)

module RuboCop::Minitest::Inject
  class << self
    def defaults!; end
  end
end

RuboCop::Minitest::PROJECT_ROOT = T.let(T.unsafe(nil), Pathname)

module RuboCop::Minitest::Version
  class << self
    def document_version; end
  end
end

RuboCop::Minitest::Version::STRING = T.let(T.unsafe(nil), String)
RuboCop::NodePattern = RuboCop::AST::NodePattern
RuboCop::ProcessedSource = RuboCop::AST::ProcessedSource
RuboCop::Token = RuboCop::AST::Token
