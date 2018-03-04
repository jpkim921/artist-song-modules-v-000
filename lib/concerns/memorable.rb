module Memorable

# Remember that the self keyword is omitted when defining class methods inside modules. The extend keyword is responsible for defining the method as a class method vs. an instance method (which would use the include keyword).

  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end
