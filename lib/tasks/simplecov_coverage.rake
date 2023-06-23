# frozen_string_literal: true

namespace :report do
  desc 'Collates all result sets generated by the different test runners'
  task simplecov: %i[environment] do
    require 'simplecov'
    require 'simplecov-cobertura'

    SimpleCov.collate Dir['coverage/.resultset.json'], 'rails' do
      formatter SimpleCov::Formatter::MultiFormatter.new(
        [
          SimpleCov::Formatter::HTMLFormatter,
          SimpleCov::Formatter::CoberturaFormatter
        ]
      )
      minimum_coverage 0
    end
  end
end