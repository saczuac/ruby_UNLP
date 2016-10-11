def in_words (time)
    minutes = to_minutes(time.min)
    words = ""
    hour = time.hour + 1
    if ["en punto", "y cuarto", "y media"].include? minutes then
       hour = hour - 1
    elsif minutes == "casi las"
       words = "Son " + minutes + " " + to_hour(hour)
       return words
    end
    words = "Son las " + to_hour(hour) + " " + minutes
end

def to_hour (hour)
    case hour
    when 12 then "doce"
    when 11 then "once"
    when 10 then "diez"
    when 9 then "nueve"
    when 8 then "ocho"
    when 7 then "siete"
    when 6 then "seis"
    when 5 then "cinco"
    when 4 then "cuatro"
    when 3 then "tres"
    when 2 then "dos"
    when 1 then "una"
    when 00 then "doce"
    else        " no sé "
    end
end

def to_minutes (minutes)
    case minutes
    when 0..10 then "en punto"
    when 11..20 then "y cuarto"
    when 21..34 then "y media"
    when 35..44 then "menos veinticinco"
    when 45..55 then "menos cuarto"
    when 55..59 then "casi las"
    else                           "no sé"
    end
end

puts in_words(Time.now)
