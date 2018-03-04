module Memorable

# Remember that the self keyword is omitted when defining class methods inside modules. The extend keyword is responsible for defining the method as a class method vs. an instance method (which would use the include keyword).

  module ClassMethods
    def reset_all
      all.clear
    end

    def count
      all.count
    end

  end


  
end
