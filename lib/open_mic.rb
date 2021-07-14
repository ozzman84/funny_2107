class OpenMic
  attr_reader :location,
              :date,
              :performers

  def initialize(hash)
    @location   = hash[:location]
    @date       = hash[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    all_jokes = []
    @performers.each do |performer|
      performer.jokes.each do |joke|
        all_jokes << joke
      end
    end
    all_jokes.any? do |joke|
      all_jokes.count(joke) > 1
    end
  end
end
