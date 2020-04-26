

   def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash.each do |seasons, holidays|
      holidays.each do |days, characteristics|
        if days == :fourth_of_july
          return characteristics[1]
        end
      end
    end
 end



def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    holiday.each do |day, things|
      if day == :christmas || day == :new_years
        things << supply
      end
    end
  end
end



def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    holiday.each do |day, things|
      if day == :memorial_day
        things << supply
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season][holiday_name] = supply_array
end


def all_winter_holiday_supplies(holiday_hash)
   holiday_hash.each do |season, holiday|
    if season == :winter
      return holiday.values.flatten
    end
  end

end

def all_supplies_in_holidays(holiday_hash)
  
  holiday_hash.each do |season, hash|
   
    puts season.to_s.capitalize + ":"
      hash.each do |holiday, supply|
        :new_years.to_s.split("_").collect {|word| word.capitalize}.join(" ")
        
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
 
end






