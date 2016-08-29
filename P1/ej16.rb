def sum_naturals (tope)
   inf = 1.0 / 0.0 # así se define el infinito en Ruby
   sum = 0
   (1...inf).each {
       |i|
        if i%3==0 or i%5==0
           if (i + sum) < tope
             sum += i
           else
               return sum
           end
        end
   }
end

puts sum_naturals(10)
