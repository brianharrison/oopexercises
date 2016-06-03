# Created a parent class called Person
# Initialized with name variable set and greeting method

class Person

	def initialize(name)
		@name = name
	end

  def name
    "Hi, my name is #{@name}."
  end

end

# Created child class called Student with learn method and msg

class Student < Person

  def learn
    "I get it!"
  end

end

# Created child class called Instructor with teach method and msg

class Instructor < Person

  def teach
    "Vegimals are all the same!"
  end

end

# Introduced Instructor and Student and called methods

chris = Instructor.new('Chris')
puts chris.name
puts chris.teach

cristina = Student.new('Cristina')
puts cristina.name
puts cristina.learn
puts cristina.teach #doesn't work because it is calling an Instructor method


