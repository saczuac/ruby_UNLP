def da_nil?
  puts yield.nil?
end

da_nil? { }
# => true
da_nil? do
 'Algo distinto de nil'
end
# => false
