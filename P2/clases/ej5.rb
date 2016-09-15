#Dada la siguiente clase abstracta GenericFactory , implementá subclases de la misma que permitan
#la creación de instancias de dichas clases mediante el uso del método de clase .create , de manera
#tal que luego puedas usar esa lógica para instanciar objetos sin invocar directamente el constructor
#new .


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
    def self.new(args)
        self.bar = args[:bar] ## no se hacen los accessors a este punto, que hacer?
    end
end

s = Sub.create(var: 10, foo: 20)
