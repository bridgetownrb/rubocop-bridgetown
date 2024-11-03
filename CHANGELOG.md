# Changelog

## 0.6.1 / 2024-11-02

* Fix outdated syntax after update to `Base`

## 0.6.0 / 2024-11-02

* Fix deprecation warnings, use `RuboCop::Cop::Base`
* Disable `Style/MixinGrouping`

## 0.5.0 / 2024-04-11

* Require minimum Ruby v3.1
* Rename insecure heredoc cop to `Bridgetown/InsecureHeredoc`
* Disable `Layout/LeadingCommentSpace`
* Disable `Style/MultilineTernaryOperator`

## 0.4.1 / 2023-11-10

* Add support for `html_attributes` and `(` characters in the heredoc cop.

## 0.4.0 / 2023-11-03

* Add insecure heredoc cop in anticipation of Bridgetown 1.4

## 0.3.2 / 2021-12-25

* Allow multi-line endless method definitions

## 0.3.1 / 2021-12-13

* Disable Style/ClassAndModuleChildren

## 0.3.0 / 2021-10-15

* Upgrade to Ruby 3-compatible Rubocop 1.22
* Disable Style/ParallelAssignment and Style/MultilineBlockChain

## 0.2.4 / 2021-02-11

* Allow lambda calls in the format `my_lambda.(x, y)`

## 0.2.3 / 2021-01-01

* Disable enforcement of specific percent literal styles (their flexibility is their strong suit!)
* Switch lambdas to literal style exclusively (`->` is always preferred over `lambda` keyword)

## 0.2.2 / 2020-12-11

* Fix issue with missing Rubocop require

## 0.2.1 / 2020-12-11

* Relax Metrics/AbcSize setting
* Add node_modules to the default ignored folders list

## 0.2.0 / 2020-05-09

Update requirement to Rubocop 0.81.0

## 0.1.0 / 2020-05-09

First release.
