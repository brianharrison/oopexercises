class Cat
  def initialize (name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time ==0
      return "12 AM"
    elsif @meal_time ==12
      return "12 PM"
    elsif @meal_time < 12
      return @meal_time.to_s + " AM"
    elsif @meal_time > 12
      return "#{@meal_time - 12} PM"
    end
  end

  def meow
    puts "Meow, my name is #{@name} and I love my #{@preferred_food} at #{eats_at}! Meow!"
  end

end

buttercup = Cat.new('buttercup', 'tuna', 6)
sandy = Cat.new('sandy', 'chicken', 15)

buttercup.meow
sandy.meow

