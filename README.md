
# Intro to OOP

* Read POODR
* What is OOP?
  * Abstraction
  * State
  * Behaviour
  * Interfaces
  * Encapsulation
  * Objects
  * Classes

# OOP Concepts

* Abstraction
    * Driven by Use Cases
    * An ``Elephant`` is not an Elephant, it's a useful Abstraction

* Class Exercise
  - Pick Problem Domain - Duck Tracker
  - Run Use Cases
    - The Duck Traffic Controller System knows which ducks are airborne
    - The Duck Traffic Controller System identifies ducks by name
    - The Duck Traffic Controller System is notified whenever a duck lands or takes off
  - Identify Abstractions
  - Identify Required Behaviours and State
  - Duck can say hello with a quack and their name

* Abstractions may become ``class``es
    * Class - the Cookie Cutter - a factory for Objects
    * _Defines_ state and behaviour

* State
    * The current condition of the program or one of it's components

* Behaviour
    * An action which changes *state* or has some other side effect

* Interfaces
    * Exposed Behaviour, what messages can be sent

* Encapsulation
    * What is hidden, often data and implementation details

* Object (or Instance)
    * The Cookies to our Cookie Cutter
    * _Has_ state and behaviour
    * You can ask ``is_a?``

* Polymorphism
    * Treating objects the same regardless of their type

# In Ruby Land
* ``class`` - Defines class and instance state and behaviour
* ``module`` used for:
  * Stand Alone Libraries ``Math.methods - Object.methods``
  * Adding reusuable behaviour to other classes ( or instances :) !)

# Code Organization
* Put classes and modules into their own files
* Group similar files into directories

# Code Demo

```
class Duck

  attr_reader :name

  def initialize(name)
    @name = name
    @airborne = false
  end

  def quack
    "Quack"
  end

  def take_off
    @airborne = true
  end

  def land
    @airborne = false
  end

  def airborne?
    @airborne
  end

  def say_hello
    "#{name} says #{quack}"
  end

end
```

# Code Demo Steps

* New Release - Add ``Eagle``
* Refactor with Inheritance - Add ``Bird``
* New Release - Add ``Aeroplane``
* Refactor with Module
* Consider NamedObject or Nameable

#Summary
* Read PODR
* Abstraction
* State
* Behaviour
* Interfaces
* Encapsulation
* Objects
* Classes

# For Curious Souls

* ``class``es are ``Objects`` too, what ``class`` do they have?
* ``modules``es are ``Objects`` too, what ``class`` do they have?
* ``Hash.new.public_methods - Object.public_methods``

# Extra Resources
* Read PODR
* [RubyMonk Overriding and Super](https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/37-classes-inheritance/lessons/88-redefining-overriding-and-super)


