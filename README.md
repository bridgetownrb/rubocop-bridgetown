# RuboCop: Bridgetown

A [RuboCop](https://rubocop.org/) extension to enforce a common code style in the Bridgetown ecosystem and beyond.

![Gem Version](https://img.shields.io/gem/v/rubocop-bridgetown.svg?label=Latest%20Release)
![RuboCop Support](https://img.shields.io/badge/Rubocop%20Support-1.23.0-green.svg)

## Installation

Just add the `rubocop-bridgetown` gem to your Gemfile.

```ruby
# Gemfile

gem "rubocop-bridgetown", "~> 0.4"
```

or if you're developing another gem:

```ruby
# <plugin>.gemspec

spec.add_development_dependency "rubocop-bridgetown", "~> 0.4"
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

**Note:** if you want just the extra cops from this gem such as `Bridgetown/HTMLEscapedHeredoc` but wish to use your own configuration otherwise, you can omit the `inherit_gem` section entirely.

You can also add a `rubocop` task to your `Rakefile`.

```ruby
# Rakefile

require "rubocop/rake_task"

RuboCop::RakeTask.new
```

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

You can override any settings inherited from the extension by configuring cops in your `.rubocop.yml`.

Besides cops which are provided directly by RuboCop and `rubocop-performance`, there are a few additional cops provided by this plugin:

* `Bridgetown/HTMLEscapedHeredoc`: this will monitor any heredocs in your code starting with `HTML` or `MARKDOWN` for potential XSS issues inside of any string interpolations. To avoid linting errors, you will need to wrap any interpolated code in the string with one of the following method names: `html`, `html_map`, `html_attributes`, `text`, or `render`. These methods are provided by the [Streamlined](https://github.com/bridgetownrb/streamlined) gem, bundled in Bridgetown 1.4 by default (but you can use them in any Ruby application including Rails).
* `Bridgetown/NoPAllowed`: this encourages using your framework's logger rather than `p` to output debugging information.
* `Bridgetown/NoPutsAllowed`: this encourages using your framework's logger rather than `puts` to output debugging information.

You can disable any of these cops in specific parts of your codebase as needed, or by setting `Enabled: false` for any particular cop in your `.rubocop.yml`.

Regarding recommended Streamlined syntax, you may want to exclude `Layout/SpaceBeforeFirstArg` and `Layout/SpaceBeforeBlockBraces` in the folders you write Streamlined components and helpers. This is so you can write `text->{ ... }`, `html->{ ... }`, etc. (Otherwise RuboCop will require you to write `text -> { ... }`, etc. which is more verbose.)
