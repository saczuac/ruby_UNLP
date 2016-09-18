class Array
  def randomly
    if block_given?
      self.shuffle.each { |e| yield e }
    else
      self.shuffle.each
    end
  end
end

array = ['a','b','c','d','e']
array.randomly {|x| p x.upcase }
 # array.randomly
