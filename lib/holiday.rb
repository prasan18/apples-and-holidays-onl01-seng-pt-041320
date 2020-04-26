

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
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
    puts "  #{holiday.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{supplies.join(", ")}"
  end
end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holiday|
    holiday.map do |holiday, supply|
      holiday if supply.include?("BBQ")
    end
  end.flatten.compact
end





