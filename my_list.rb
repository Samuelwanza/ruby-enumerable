# frozen_string_literal: true

require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)
puts list.inspect

puts list.all? { |e| e < 5 }.inspect
puts list.all? { |e| e > 5 }.inspect

puts list.any? { |e| e == 2 }.inspect
puts list.any? { |e| e == 5 }.inspect

puts list.filter(&:even?).inspect
