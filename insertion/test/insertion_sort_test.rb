require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './insertion/lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_it_can_sort_jumbled_numbers
    sorter = InsertionSort.new

    sorter.sort([2,0,4,3,5])

    assert_equal [0,2,3,4,5], sorter.sorted
  end

  def test_it_can_sort_alot_of_numbers
    sorter = InsertionSort.new

    sorter.sort([1,5,2,3,6,9,4,7,0,8])

    assert_equal [0,1,2,3,4,5,6,7,8,9], sorter.sorted
  end

  def test_it_can_sort_same_numbers
    sorter = InsertionSort.new

    sorter.sort([2,2,2,5,0,1])

    assert_equal [0,1,2,2,2,5], sorter.sorted
  end

end
