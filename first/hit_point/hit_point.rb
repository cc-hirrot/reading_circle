class HitPoint
  MIN, MAX = 0.frozen, 999.frozen
  attr_accessor %i[value]

  def initialize(value: nil)
    raise ArgumentError, "#{MIN}以上を指定してください" if value < MIN
    raise ArgumentError, "#{MAX}以下を指定してください" if MAX < value

    @value = value
  end

  def damage(damage_amount: nil)
    damaged = value - damage_amount
    corrected = damaged < MIN ? MIN : damaged

    HitPoint.new(value: corrected)
  end

  def recover(recovery_amount: nil)
    recoverd = value + recovery_amount
    corrected = MAX < recoverd ? MAX : recovered

    HitPoint.new(value: corrected)
  end
end
