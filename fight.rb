class Fighter
  attr_reader :health
  attr_accessor :name

  def initialize(name, health)
    @name = name
    @health = Float(health)
  end

  def take_damage
    @health -= 1
  end

end

class Fight
  def initialize(fighter_one, fighter_two)
    @fighter_one = fighter_one
    @fighter_two = fighter_two
    @over = false
  end

  def to_s
    "Current score #{@fighter_one.name} - #{@fighter_one.health} vs #{@fighter_two.name} - #{@fighter_two.health}"
  end

  def punch(fighter)
    if @over 
      puts "Fight is over"
      return
    end
    reduce_health(fighter)
    check_for_winner
  end

  private def reduce_health(fighter)
    fighter.take_damage
  end

  private def check_for_winner
    if @fighter_one.health == 0
      puts "#{@fighter_two.name} has won!"
      @over = true
      return @fighter_two
    elsif @fighter_two.health == 0
      puts "#{@fighter_one.name} has won!"
      @over = true
      return @fighter_one
    end
  end
end

rocky = Fighter.new("Rocky", 10)
apollo = Fighter.new("Apollo", 10)

fight = Fight.new(rocky, apollo)

fight.punch(rocky)
fight.punch(rocky)
fight.punch(rocky)
fight.punch(apollo)
fight.punch(rocky)
fight.punch(rocky)
fight.punch(rocky)
fight.punch(rocky)
fight.punch(rocky)
fight.punch(rocky)
fight.punch(rocky)
fight.punch(rocky)

puts fight