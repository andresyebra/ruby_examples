# frozen_string_literal: true

# Applications that are easy to change consist of classes that are easy to reuse.
# Reusable classes are pluggable units of well-defined behavior that have few entanglements.
# An application that is easy to change is like a box of building blocks; you can select just the pieces you need and assemble them in unanticipated ways.
# A class that has more than one responsibility is difficult to reuse.
# The various responsibilities are likely thoroughly entangled within the class.
# If you want to reuse some (but not all) of its behavior, it is impossible to get at only the parts you need.
# You are faced with two options and neither is particularly appealing.
class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    # tire goes around rim twice for diameter
    ratio * (rim + (tire * 2))
  end
end

# puts Gear.new(52, 11, 26, 1.5 Reducing  Costs With Duck Typing).gear_inches
# => 137.0909090909091
