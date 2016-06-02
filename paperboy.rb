class Paperboy

attr_reader :name, :quota, :experience, :side, :earnings
attr_writer :name, :quota, :experience, :side

  def initialize(name, quota, experience, side, earnings)
    @name = name
    @quota = quota
    @experience = experience
    @side = side
    @earnings = earnings
  end

end
