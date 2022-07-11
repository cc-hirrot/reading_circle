class Main
  def self.run
    hit_point = HitPoint.new(value: 100)
    weapon = Weapon.new(damage: 10, strength: 5)
    monster = Monster.new('スライム', hit_point, weapon)
  end
end

Main.run
