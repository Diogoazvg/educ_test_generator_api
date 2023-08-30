# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'bootsnap', require: false
gem 'cpf_cnpj', '~> 0.2.1'
gem 'devise', '~> 4.9', '>= 4.9.2'
gem 'devise-token_authenticatable', '~> 1.1'
gem 'graphql', '~> 2.0', '>= 2.0.22'
gem 'interactor', '~> 3.1', '>= 3.1.2'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4', '>= 7.0.4.3'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'byebug'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'
  gem 'faker', '~> 3.2'
  gem 'simplecov', require: false
  gem 'simplecov-cobertura', require: false
end

group :development do
  gem 'annotate', '~> 3.2'
  gem 'rubocop', require: false
  gem 'rubocop-faker'
  gem 'rubocop-rails', require: false
end

group :test do
  gem 'shoulda', '~> 4.0'
end
