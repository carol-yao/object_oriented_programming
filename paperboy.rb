class Paperboy

attr_reader :name, :experience, :side, :earnings
attr_writer :name, :experience, :side

  def initialize(name, side, earnings = 0, experience = 0)
    @name = name
    @experience = experience
    @side = side
    @earnings = earnings
  end

  def quota
    "#{ 50 + (experience / 2.0) }"
  end

    def deliver(starting_address, end_address)
      if (side == "even" && starting_address.even? && end_address.even?) || (side == "odd" && starting_address.odd? && end_address.odd?)
          "#{amount_paid(((end_address - starting_address) / 2) + 1)}"
      elsif (side == "even" && starting_address.odd? && end_address.odd?) || (side == "odd" && starting_address.even? && end_address.even?)
          "#{amount_paid((end_address - starting_address) / 2)}"
      elsif (side == "even" && starting_address.odd? && end_address.even?) || (side == "odd" && starting_address.odd? && end_address.even?)
          "#{amount_paid((end_address - (starting_address - 1)) / 2)}"
      elsif (side == "even" && starting_address.even? && end_address.odd?) || (side == "odd" && starting_address.odd? && end_address.odd?)
          "#{amount_paid(((end_address + 1) - starting_address) / 2)}"
      else
        "side not inputted properly"
      end
    end

    def amount_paid(total_houses)

      amount =  if total_houses > quota.to_i
                  (quota.to_i * 0.25) + ((total_houses - quota.to_i) * 0.50)
                elsif total_houses == quota.to_i
                  quota.to_i * 0.25
                else
                  (total_houses * 0.25) - 2
      end
      @experience += total_houses
      @earnings += amount
      amount
    end

    def report
      "I'm #{name}, I've delivered #{experience} papers and I've earned $#{earnings.to_f} so far!"
    end

end
