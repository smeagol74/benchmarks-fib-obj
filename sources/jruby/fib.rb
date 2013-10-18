class Fib
    def initialize(n)
        @_value = n
    end

    def value()
        if(@_value <= 2)
            return 1
        end

        return Fib.new(@_value - 1).value() + Fib.new(@_value - 2).value()
    end
end

print "Result="
print Fib.new(40).value()


