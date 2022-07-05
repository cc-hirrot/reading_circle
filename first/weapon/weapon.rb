class Weapon
  attr_accessor %i[damage strength]

  def initialize(damage: nil, strength: nil)
    @damage = damage
    @strength = strength
  end
end
