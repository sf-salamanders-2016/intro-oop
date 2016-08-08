require 'spec_helper'

require 'duck'

describe Duck do

  let(:harry){ Duck.new('Harry') }

  describe "#name" do
    it "is Harry" do
      expect(harry.name).to eq 'Harry'
    end
  end

  describe "#quack" do
    it "says quack" do
      expect(harry.quack).to eq 'Quack'
    end
  end

  describe "#say_hello" do
    it "quacks with name" do
      expect(harry.say_hello).to eq 'Harry says Quack'
    end
  end

  describe "#airborne?" do
    it "starts on the ground" do
      expect(harry.airborne?).to be false
    end
  end

  describe "#take_off" do
    it "becomes airborne" do
      harry.take_off
      expect(harry.airborne?).to be true
    end
  end

  describe "#land" do
    it "is no longer airborne" do
      harry.take_off
      harry.land
      expect(harry.airborne?).to be false
    end
  end

end
