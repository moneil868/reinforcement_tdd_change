class Changer

  QUARTERS = 25
  DIMES = 10
  NICKLES = 5
  PENNIES = 1

  def self.make_change(value)

    result = []
    if value == QUARTERS ||
         value == DIMES    ||
         value == NICKLES  ||
         value == PENNIES
         result << value
    elsif value > QUARTERS
       while value > 0
         result << QUARTERS
         value -= QUARTERS
       end
     elsif value > DIMES
       while value > 0
         result << DIMES
         value -= DIMES
       end
    end
    result
  end

end
