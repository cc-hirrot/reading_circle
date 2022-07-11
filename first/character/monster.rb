class Monster
  attr_accessor %i[name hit_point weapon]

  def initialize(name: nil, hit_point: nil, weapon: nil)
    raise ArgumentError, '名前を指定してください' if name
    raise ArgumentError, 'ヒットポイントを指定してください' if hit_point
    raise ArgumentError, '武器を指定してください' if weapon
    @name = name
    @hit_point = hit_point
    @weapon = weapon
  end
end
