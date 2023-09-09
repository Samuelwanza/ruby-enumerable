# frozen_string_literal: true

require_relative "my_enumerable"

class MyList
  include MyEnumerable
  def initialize(*elements)
    @list = elements
  end

  def each()
    @list.each { |item| yield item }
  end
end




list = MyList.new(1, 2, 3, 4)
puts list.inspect

puts list.all? { |e| e < 5 }
puts list.all? { |e| e > 5 }

puts list.any? { |e| e == 2 }
puts list.any? { |e| e == 5 }

puts list.filter { |e| e.even? }.inspect
