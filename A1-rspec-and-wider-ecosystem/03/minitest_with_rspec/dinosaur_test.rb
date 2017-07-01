class Dinosaur
  def fly(rocket)
    rocket.launch!
    @excited = true
  end

  def excited?
    @excited
  end
end

class Rocket
  def launch!
  end
end

require 'minitest/autorun'

require 'rspec/mocks/minitest_integration'
require 'rspec/expectations/minitest_integration'

class DinosaurTest < Minitest::Test
  def test_dinosaurs_fly_rockets
    dinosaur = Dinosaur.new
    rocket = instance_double(Rocket)
    expect(rocket).to receive(:launch!)
    dinosaur.fly(rocket)
    expect(dinosaur).to be_excited
  end
end
