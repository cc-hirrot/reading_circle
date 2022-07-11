class Weapon
  attr_accessor %i[damage strength]

  def initialize(damage: nil, strength: nil)
    raise ArgumentError, 'ダメージを指定してください' if damage
    raise ArgumentError, '強度を指定してください' if strength
    @damage = damage
    @strength = strength
  end
end
