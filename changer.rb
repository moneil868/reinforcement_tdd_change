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
       until value == 0
         case
         when value >= QUARTERS
           result << QUARTERS
           value -= QUARTERS
         when value >= DIMES
           result << DIMES
           value -= DIMES
         when value >= NICKLES
           result << NICKLES
           value -= NICKLES
         when value >= PENNIES
           result << PENNIES
           value -= PENNIES
         end
         value
       end
     elsif value > DIMES
       while value > 0
         result << DIMES
         value -= DIMES
       end
     elsif value > NICKLES
       result << NICKLES
       value -= NICKLES
       until value == PENNIES
         result << PENNIES
         value -= PENNIES
       end
       result << PENNIES
    end
    result
  end

end
