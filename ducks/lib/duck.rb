require_relative 'bird'

class Duck < Bird

  def quack
    "Quack"
  end

  def say_hello
    "#{@name} says #{quack}"
  end
end


























#

# Add these:
# * Eagle
# * Bird
# * Aeroplane
# * Flyable
# * NamedObject or Nameable ?





# https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/37-classes-inheritance/lessons/88-redefining-overriding-and-super

