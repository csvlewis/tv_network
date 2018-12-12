class Network
  attr_reader :name,
              :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    highest_paid_actor = nil
    @shows.each do |show|
      show.characters.each do |character|
        if character.salary == all_salaries.max
          highest_paid_actor = character.actor
        end
      end
    end
    highest_paid_actor
  end

  def payroll
    Hash[all_actors.zip(all_salaries)]
  end

  def all_actors
    all_actors = []
    @shows.each do |show|
      show.characters.each do |character|
        all_actors << character.actor
      end
    end
    all_actors
  end

  def all_salaries
    all_salaries = []
    @shows.each do |show|
      show.characters.each do |character|
        all_salaries << character.salary
      end
    end
    all_salaries
  end
end
