module Countable
    methods_count = {}
    def Countable.included(mod)
       puts "#{self} included in #{mod}"
       mod.instance_methods
    end
end

class String
   include Countable
end
