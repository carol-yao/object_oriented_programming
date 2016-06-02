class Paperboy

attr_reader :name, :experience, :side, :earnings
attr_writer :name, :experience, :side

  def initialize(name, experience, side, earnings)
    @name = name
    @experience = experience
    @side = side
    @earnings = earnings
  end

  def quota
    "#{ 50 + (experience/2.0) }"
  end


end
