class Gear
  attr_reader :chainring, :cog, :rim, :dic

  def initialize(chainring:, cog:, rim:, dic:)
    @chainring = chainring
    @cog = cog
    @wheel ||= Wheel.new(rim, dic)
  end

  def gear_inches
    ratio * wheel.diameter
  end

  def ratio
    chainring / cog.to_f
  end

  def wheel
    @wheel
  end
end

# Gear expects a ‘Duck’ that knows ‘diameter’
#  Gear.new(52, 11, 26, 1.5 Reducing  Costs With Duck Typing).gear_inches
