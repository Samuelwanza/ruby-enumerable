# frozen_string_literal: true

module MyEnumerable
  def all?(&block)
    each { |item| return false unless yield(item) }
    true
  end
end
