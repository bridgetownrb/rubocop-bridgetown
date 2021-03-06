# RuboCop Bridgetown

A RuboCop extension to enforce common code style in Bridgetown plugins.

![Gem Version](https://img.shields.io/gem/v/rubocop-bridgetown.svg?label=Latest%20Release)
![RuboCop Support](https://img.shields.io/badge/Rubocop%20Support-0.81.0-green.svg)


## Installation

Just install the `rubocop-bridgetown` gem

```
gem install rubocop-bridgetown
```

or if you prefer Bundler, add it to your `Gemfile` or `gemspec`

```ruby
# Gemfile

gem "rubocop-bridgetown", "~> 0.2"
```
```ruby
# <plugin>.gemspec

spec.add_development_dependency "rubocop-bridgetown", "~> 0.2"
```
and run `bundle install`


## Usage

You need to tell RuboCop to load the extension and *inherit* the custom RuboCop configuration advocated by
[Bridgetown](https://github.com/bridgetownrb/bridgetown).

Place the following at the top of your `.rubocop.yml`.

```yaml
require: rubocop-bridgetown
inherit_gem:
  rubocop-bridgetown: .rubocop.yml
```

Running `bundle exec rubocop` will now automatically load the `rubocop-bridgetown` cops together with the standard cops.

## Exclude Folders List

Currently it seems Rubocop doesn't inherit the `Excludes` folder list from the gem configuration, so you may want to add it manually to your `.rubocop.yml` file:

```yaml
AllCops:
  Exclude:
    - bin/**/*
    - exe/**/*
    - benchmark/**/*
    - node_modules/**/*
    - script/**/*
    - vendor/**/*
    - tmp/**/*
```

## Customization

You can override any settings inherited from the extension by subsequently redefining the concerned parameters.
