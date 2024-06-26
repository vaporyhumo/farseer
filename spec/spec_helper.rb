# frozen_string_literal: true

require 'simplecov' unless $PROGRAM_NAME.include?('bin/mutant')
require 'farseer'

Maybe  = Muina::Maybe
Result = Farseer::Result

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.example_status_persistence_file_path = '.rspec_status'
  config.disable_monkey_patching!
  config.profile_examples = 0

  Kernel.srand config.seed
end
