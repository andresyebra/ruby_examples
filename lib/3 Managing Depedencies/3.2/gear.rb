# frozen_string_literal: true

class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring:, cog:, rim:, tire:)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def gear_inches
    ratio * Wheel.new(rim, tire).diameter
  end

  def ratio
    chainring / cog.to_f
  end
end

# Gear.new(chainring: 52, cog: 11, rim: 26, tire: 1.5 Reducing  Costs With Duck Typing).gear_inches
