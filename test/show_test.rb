require 'minitest/autorun'
require './lib/character'
require './lib/show'

class ShowTest < Minitest::Test
  def test_it_exists
    kitt = Character.new(name: 'KITT', actor: 'William Daniels', salary: 1_000_000)
    michael_knight = Character.new(name: 'Michael Knight', actor: 'David Hasselhoff', salary: 1_600_000)
    knight_rider = Show.new('Knight Rider', 'Glen Larson', [michael_knight, kitt])
    assert_instance_of Show, knight_rider
  end

  def test_it_has_a_name
    kitt = Character.new(name: 'KITT', actor: 'William Daniels', salary: 1_000_000)
    michael_knight = Character.new(name: 'Michael Knight', actor: 'David Hasselhoff', salary: 1_600_000)
    knight_rider = Show.new('Knight Rider', 'Glen Larson', [michael_knight, kitt])
    assert_equal 'Knight Rider', knight_rider.name
  end

  def test_it_has_a_creator
    kitt = Character.new(name: 'KITT', actor: 'William Daniels', salary: 1_000_000)
    michael_knight = Character.new(name: 'Michael Knight', actor: 'David Hasselhoff', salary: 1_600_000)
    knight_rider = Show.new('Knight Rider', 'Glen Larson', [michael_knight, kitt])
    assert_equal 'Glen Larson', knight_rider.creator
  end

  def test_it_has_characters
    kitt = Character.new(name: 'KITT', actor: 'William Daniels', salary: 1_000_000)
    michael_knight = Character.new(name: 'Michael Knight', actor: 'David Hasselhoff', salary: 1_600_000)
    knight_rider = Show.new('Knight Rider', 'Glen Larson', [michael_knight, kitt])
    assert_equal 2, knight_rider.characters.count
  end

  def test_it_has_a_total_salary
    kitt = Character.new(name: 'KITT', actor: 'William Daniels', salary: 1_000_000)
    michael_knight = Character.new(name: 'Michael Knight', actor: 'David Hasselhoff', salary: 1_600_000)
    knight_rider = Show.new('Knight Rider', 'Glen Larson', [michael_knight, kitt])
    assert_equal 2_600_000, knight_rider.total_salary
  end
end
