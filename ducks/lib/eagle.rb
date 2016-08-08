require_relative 'bird'

class Eagle < Bird
  attr_accessor :wingspan

  def stuff=(wingspan)
    @wingspan = wingspan
  end

  @@all_eagles = []
  def initialize(options = {})
    super
    @wingspan = options[:wingspan] || 12
    # don't use the above when working with booleans!
    @has_feathers = options.fetch(:has_feathers, true)
    # @name = "bob"
    @@all_eagles << self
  end

  def self.all_eagles
    @@all_eagles
  end

  def to_s
    "Name: #{name}, Wingspan: #{wingspan}"
  end
end


a = Eagle.new(name: "Sam", wingspan: 14, has_feathers: false)
a.wingspan = 50
a.stuff = "asdf"
p a.wingspan
p a.name


b = Eagle.new

p b.name

p "*"*100
puts Eagle.all_eagles
puts Eagle.thing
