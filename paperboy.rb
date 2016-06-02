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

    def deliver(starting_address, end_address)
      if side == "even"
        if starting_address.even? && end_address.even?
          "#{((end_address - starting_address) / 2) + 1 }"
        elsif starting_address.odd? && end_address.odd?
          "#{(end_address - starting_address) / 2}"
        elsif starting_address.odd? && end_address.even?
          "#{(end_address - (starting_address - 1)) / 2}"
        elsif starting_address.even? && end_address.odd?
          "#{((end_address + 1) - starting_address) / 2}"
        end
      elsif side == "odd"
        if starting_address.odd? && end_address.odd?
          "#{((end_address - starting_address) / 2) + 1}"
        elsif starting_address.even? && end_address.even?
          "#{(end_address - starting_address) / 2}"
        elsif starting_address.odd? && end_address.even?
          "#{(end_address - (starting_address - 1)) / 2}"
        elsif starting_address.odd? && end_address.odd?
          "#{((end_address + 1) - starting_address) / 2}"
        end
      else
        "side not inputted properly"
      end
    end

end
