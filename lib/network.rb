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
    highest_paid_actor = []
    @shows.each do |show|
      show.characters.each do |character|
        all_salaries << character.salary
      end
    end
    @shows.each do |show|
      show.characters.each do |character|
        if character.salary == all_salaries.max
          highest_paid_actor << character.actor
        else
          next
        end
        end
    end
    return highest_paid_actor[0]
  end
end
