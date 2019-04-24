gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class SelectPatternTest < Minitest::Test

  def test_1
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    evens = []
    numbers.each do |number|
      evens << number if number.even?
    end
    assert_equal [2, 4, 6, 8, 10], evens
  end

  def test_2
    numbers = {
      one: 1,
      two: 2,
      three: 3,
      four: 4,
      five: 5,
    }
    evens = {}
    numbers.each do |name, number|
      if number.even?
        evens[name] = number
      end
    end

    expected = {
      two: 2,
      four: 4
    }
    assert_equal expected, evens
  end

  def test_3

    rainbow = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
    greater_than_four = []
    rainbow.each do |color|
        greater_than_four << color if color.length > 4
    end

    assert_equal ["orange", "yellow", "green", "indigo", "violet"], greater_than_four
  end

  def test_4

    rainbow = {
      first: "red",
      second: "orange",
      third: "yellow",
      fourth: "green",
      fifth: "blue",
      sixth: "indigo",
      seventh: "violet"
    }
    greater_than_four = {}
    rainbow.each do |position, color|
      greater_than_four[position] = color if color.length > 4
    end

    expected = {
      second: "orange",
      third: "yellow",
      fourth: "green",
      sixth: "indigo",
      seventh: "violet"
    }
    assert_equal expected, greater_than_four
  end


  def test_5
    furniture = ["dining table", "bed", "coffee table", "deck chairs"]
    words_with_c = []
    furniture.each do |item|
      if item.include?("c")
        words_with_c << item
      end
    end

    assert_equal ["coffee table", "deck chairs"], words_with_c
  end

  def test_6

    furniture = {
      dining_room: "dining table",
      bedroom: "bed",
      living_room: "coffee table",
      patio: "deck chairs"
    }
    words_with_c = {}
    furniture.each do |room, item|
      if item.include?("c")
        words_with_c[room] = item
      end
    end

    expected = {
      living_room: "coffee table",
      patio: "deck chairs"
    }
    assert_equal expected, words_with_c
  end

  def test_7

    meals = ["chips and salsa", "chicken alfredo", "banana pudding"]
    two_words = []
    meals.each do |words|
      if words.split.size == 2
        two_words << words
      end
    end


    assert_equal ["chicken alfredo", "banana pudding"], two_words
  end

  def test_8

    meal = {
      appetizer: "chips and salsa",
      entre: "chicken alfredo",
      dessert: "banana pudding"
    }
    two_words = {}

    meal.each do|course, food|
      if food.split.size == 2
        two_words[course] = food
end
    end


    expected = {
      entre: "chicken alfredo",
      dessert: "banana pudding"
    }
    assert_equal expected, two_words
  end


  def test_9

    prices = [3, 1.4, 3.5, 2, 4.9, 9.1, 8.0]
    floats = Array.new
    prices.each do|price|
      if price.is_a?(Float)
        floats << price
end
end
    assert_equal [1.4, 3.5, 4.9, 9.1, 8.0], floats
  end

  def test_10
    items = {
      tv: 3,
      toaster: 1.4,
      basketball: 3.5,
      bucket: 2,
      lint_roller: 4.9,
      sack_o_potatoes: 9.1,
      tonka_truck: 8.0
    }
    floats = Hash.new
  items.each do |item, num|
    if num.is_a?(Float)
      floats[item] = num
    end
  end 

    expected = {
      toaster: 1.4,
      basketball: 3.5,
      lint_roller: 4.9,
      sack_o_potatoes: 9.1,
      tonka_truck: 8.0
    }
    assert_equal expected, floats
  end
end
