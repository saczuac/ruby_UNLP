module GenericFactory
    def self.included(mod)
      mod.extend(ClassMethods)
    end
    def initialize(**args)
        raise NotImplementedError
    end
    module ClassMethods
      def create(**args)
          new(**args)
      end
    end
end

class Sub
    attr_accessor :bar, :foo
    include GenericFactory
    def initialize(**args)
      self.bar = args[:bar]
      self.foo = args[:foo]
    end
end

s = Sub.create(bar: 10, foo: 20)
p s.bar
