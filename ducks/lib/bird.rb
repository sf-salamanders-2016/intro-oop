class Bird
  attr_reader :name

  def initialize(options = {})
    @name = options.fetch(:name, "Jim")
  end

  def self.thing
    "asdfads"
  end

end
