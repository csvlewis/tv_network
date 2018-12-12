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
    all_salaries = []
    highest_paid_actor = nil
    @shows.each do |show|
      show.characters.each do |character|
        all_salaries << character.salary
      end
    end
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
    all_actors = []
    all_salaries = []
    @shows.each do |show|
      show.characters.each do |character|
        all_actors << character.actor
      end
    end
    @shows.each do |show|
      show.characters.each do |character|
        all_salaries << character.salary
      end
    end
    Hash[all_actors.zip(all_salaries)]
  end
end
