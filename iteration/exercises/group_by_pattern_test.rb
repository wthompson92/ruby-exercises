gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class GroupByPatternTest < Minitest::Test

  def test_group_words_by_length
    words = ["sue", "alice", "steve", "sally", "adam", "fort", "tops", "dog", "cat"]
    grouped = Hash.new {|hash, key| hash[key] = []}
    words.each do |word|
      grouped[word.length] << word
    end
    expected = {3=>["sue", "dog", "cat"], 4=>["adam", "fort", "tops"], 5=>["alice", "steve", "sally"]}
    assert_equal expected, grouped
  end

  def test_group_numbers_by_odd_and_even
    numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    odd_and_even = Hash.new {|hash, key| hash[key] = []}
    numbers.each do |number|
      if number % 2 != 0
        odd_and_even[1] << number
      else
        odd_and_even[0] << number
      end

    end
    expected = {1=>[1, 1, 3, 5, 13, 21, 55], 0=>[2, 8, 34]}
    assert_equal expected, odd_and_even
  end

  def test_group_words_by_first_letter

    words = ["ant", "axis", "albatross", "bolt", "badge", "butter", "car", "cdr", "column"]
    words_by_first_letter = Hash.new {|hash, key| hash[key] = []}
    words.each do |word|
      if word[0] == "a"
        words_by_first_letter["a"] << word
      elsif word[0] == "b"
          words_by_first_letter["b"] << word
        else word[0] == "c"
          words_by_first_letter["c"] << word
      end
    end


      expected = {"a"=>["ant", "axis", "albatross"], "b"=>["bolt", "badge", "butter"], "c"=>["car", "cdr", "column"]}
    assert_equal expected, words_by_first_letter
  end

  def test_group_words_by_uniqueness

    words = ["one", "two", "one", "TWO", "three", "one", "three", "three", "three"]
    grouped = Hash.new {|hash, key| hash[key] = []}
    words.each do |word|
      if words.include?(word)
        grouped[word.downcase] << word
      end

    end

    expected = {"one"=>["one", "one", "one"], "two"=>["two", "TWO"], "three"=>["three", "three", "three", "three"]}
    assert_equal expected, grouped
  end

  def test_group_by_number_of_zeros

    numbers = [1, 3, 500, 200, 4000, 3000, 10000, 90, 20, 500000]
    grouped = Hash.new {|hash, key| hash[key] = []}
    numbers.each do |number|
      if number % 100000 == 0
        grouped[5] << number
        elsif number % 10000 == 0
        grouped[4] << number
          elsif number % 1000 == 0
        grouped[3] << number
          elsif number % 100 == 0
        grouped[2] << number
          elsif number % 10 == 0
        grouped[1] << number
      else
        grouped[0] << number
      end
    end

    expected = {0=>[1, 3], 2=>[500, 200], 3=>[4000, 3000], 4=>[10000], 1=>[90, 20], 5=>[500000]}
    assert_equal expected, grouped
  end

  def test_group_by_order_of_magnitude
    numbers = [1, 3, 503, 239, 4938, 3932, 19982, 93, 21, 501787]
    grouped = Hash.new {|hash, key| hash[key] = []}
    numbers.each do |number|
      if number.to_s.length == 1
          grouped[1] << number
      elsif number.to_s.length == 2
          grouped[2] << number
        elsif number.to_s.length == 3
            grouped[3] << number
          elsif number.to_s.length == 4
              grouped[4] << number
            elsif number.to_s.length == 5
                grouped[5] << number
              elsif number.to_s.length == 6
                  grouped[6] << number
                end
              end

    expected = {1=>[1, 3], 2=>[93, 21], 3=>[503, 239], 4=>[4938, 3932], 5=>[19982], 6=>[501787]}
    assert_equal expected, grouped
  end

end
