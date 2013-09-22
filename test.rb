#!/usr/bin/env ruby

$:.unshift('.')
require 'lib/contributions'

contrib = Contributions.new(ARGV.first || 'akerl')

puts "Contribution data for #{contrib.user}:
    Today's score: #{contrib.today}
    Current streak: #{contrib.streak.length}
    High score: #{contrib.max.score} on #{contrib.max.date}"

