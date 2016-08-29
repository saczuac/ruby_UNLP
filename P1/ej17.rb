def even_fibonacci_sum ()
   fibonacci = [0,1]
   inf = 1.0 / 0.0
   sum = 0
   inf.times {
      sum_f = fibonacci.last + fibonacci[fibonacci.length - 2]
      if sum_f < 4_000_000
        fibonacci.push(sum_f)
        fibonacci.shift
        if sum_f%2==0 
			sum += sum_f
        end
      else 
         break  
      end 
   }
   sum 
end
