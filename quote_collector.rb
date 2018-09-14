require_relative "multilinguist"
require "pry-nav"

class QuoteCollector < Multilinguist
  def initialize
    @quote_list = []
  end

  def add_quote(quote)
    @quote_list << quote.to_s
  end

  def random_quote
    random = rand(@quote_list.length)
    return say_in_local_language(@quote_list[random])
  end

  attr_reader :quote_list
end

gus = QuoteCollector.new
gus.add_quote("May the force be with you")
gus.add_quote("It's a good day to die")
gus.add_quote("You can't handle the truth")
gus.add_quote("Put some respek on my name")

gus.travel_to("Italy")

puts gus.random_quote
puts gus.random_quote
puts gus.random_quote
puts gus.random_quote
puts gus.random_quote
