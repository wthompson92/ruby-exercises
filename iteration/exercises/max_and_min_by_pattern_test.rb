require 'minitest/autorun'
require 'minitest/pride'

class MaxAndMinByPatternTest < Minitest::Test
  def test_1
    numbers = [1, 100, 1000, 1000000]
    greatest = numbers[0]
    numbers.each do |number|
      if number > greatest
        greatest = number
      end
    end
    assert_equal 1000000, greatest
  end

  def test_2
    magnitudes = {
      ones: 1,
      hundreds: 100,
      thousands: 1000,
      millions: 1000000
    }
    greatest = magnitudes[magnitudes.keys[0]]
    magnitudes.each do |name, value|
      if value > greatest
        greatest = value
      end
    end
    assert_equal 1000000, greatest
  end

  def test_3

    meals = ["banana", "nuts", "salad", "steak", "cake"]
    shortest_word = meals[0]
    meals.each do |meal|
      if meal.length < shortest_word.length
        shortest_word = meal
    end
end
    assert_equal "nuts", shortest_word
  end

  def test_4
    meals = {
      breakfast: "banana",
      snack: "nuts",
      lunch: "salad",
      dinner: "steak",
      dessert: "cake"
    }
    shortest_word = meals[meals.keys.first]
    meals.each do |meal, dish|
        if meal.length < shortest_word.length
          shortest_word = dish

      end
    end

    assert_equal "nuts", shortest_word
  end

  def test_5

    stats = [3001, 431, 1695, 0.27601, 0.340]
    most_digits = stats[0]
    stats.each do |digits|
      if digits.to_s.length > most_digits.to_s.length
        most_digits = digits
      end
    end

    assert_equal 0.27601, most_digits
  end


  def test_6
    stats = {
      games_played: 3001,
      home_runs: 431,
      rbi: 1695,
      batting_average: 0.27601,
      on_base_percentage: 0.340
    }
    most_digits = stats[stats.keys.first]
    stats.each do |type, stat|
        if stat.to_s.length > most_digits.to_s.length
          most_digits = stat
        end
      end
    assert_equal 0.27601, most_digits
  end

  def test_7

    ages = [39, 45, 29, 24, 50]
    oldest = ages[0]
    ages.each do |age|
      if age > oldest
        oldest = age
      end
    end

    assert_equal 50, oldest
  end

  def test_8

    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }

    oldest = ages.first
    ages.each do |pair|
      if oldest[1] < pair[1]
        oldest = pair
end
    end
    oldest = {name: oldest[0].to_s, age: oldest[1]}

    expected = {name: "miguel", age: 50}
    assert_equal expected, oldest
  end

  def test_9

    programmers = [["katrina", "sandi", "jim", "aaron", "desi"], ["abby", "jon", "susan"]]
    fewest_programmers = programmers[0]
    programmers.each do |size|
      if size.length < fewest_programmers.length
        fewest_programmers = size
    end
end

    assert_equal ["abby", "jon", "susan"], fewest_programmers
  end

  def test_10

    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}
    fewest_programmers = programmers[programmers.keys[0]]
    programmers.each do |language, size|
      if size.length < fewest_programmers.length
        fewest_programmers = language
      end
    end

    assert_equal :java, fewest_programmers
  end
end
