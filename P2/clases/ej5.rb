class GenericFactory
    def self.create(**args)
        new(**args)
    end
    def initialize(**args)
        raise NotImplementedError
    end
end

class Sub < GenericFactory
    attr_accessor :bar, :foo
    def initialize(**args)
      self.bar = args[:bar]
      self.foo = args[:foo]
    end
end

s = Sub.create(bar: 10, foo: 20)
p s.bar
