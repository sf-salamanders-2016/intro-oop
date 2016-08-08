puts "1 - Outside of Foo self is '#{self}'"

class Foo

  puts "2 - Inside Foo self is '#{self}'"
  THING = "a"
  @@thing = "a"

  def thing
    @@thing
  end

  def zee
    @@thing = 3
    puts "3 - Inside #zee self is '#{self}'"
  end

  def self.bar
    puts "4 - Inside Foo.bar self is '#{self}'"
  end

  # def to_s
  #   "Instance of Foo with name"
  # end

end

puts "5 - Outside of Foo self is '#{self}'"


Foo.bar

foo = Foo.new

foo.zee

thing = Foo.new
# thing.thing
thing.zee
