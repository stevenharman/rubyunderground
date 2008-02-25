require "test/unit"
class ArrayTest < Test::Unit::TestCase
  
  def test_ampersand
    a, b = [1,2,3], [4,5,6]
    assert_equal([], a&b, "Intersection of disjoint arrays didn't produce an empty array")
    a, b = [1,2,3], [3,4,5]
    assert_equal([3], a&b, "Intersection of arrays with 1 common element didn't produce 1 result")
    a, b = [1,1,1], [1,2,3]
    assert_equal([1], a&b, "Intersection with duplicate entries did not eliminate dups")
    a = [1,2,3]
    assert_equal(a, a&a, "Intersection with self did not return self")
    a = [1,1,2]
    assert_equal([1,2], a&a, "Intersection with selfs with dups did not eliminate dups")
    assert_equal([], a&[], "Intesection with empty array did not return empty array")
  end
  
  def test_star
    a = [1,2,3]
    assert_equal([1,2,3,1,2,3], a*2, "Doubling an array failed")
    assert_equal([1,2,3], a*1, "Multiplying by one failed")
    assert_equal([], []*2, "Multiplying an empty array by an integer failed")
    
    assert_raise ArgumentError do
      a*-1
    end
    
    assert_equal("1,2,3", a*",", "Multiplying by a comma failed")
    assert_equal("1::2::3", a*"::", "Multiplying by a couple colons failed")
    assert_equal("123", a*"", "Multiplying by an empty string failed")
    assert_equal("", []*",", "Multiplying an empty array by a string failed")
  end
  
  def test_plus
    a, b = [1,2,3], [4,5,6]
    assert_equal([1,2,3,4,5,6], a+b, "Addition of arrays failed")
    a, b = [1,2,3], [3,4,5]
    assert_equal([1,2,3,3,4,5], a+b, "Addition with common elements failed")
    assert_equal(a, a&a, "Addition with self did not equal self")
    assert_equal(a, a+[], "Addition with empty did not produce self")
  end
  
  def test_minus
    a, b = [1,2,3], [4,5,6]
    assert_equal([1,2,3], a-b, "Subtraction of mismatched arrays failed")
    a, b = [1,2,3], [3]
    assert_equal([1,2], a-b, "Subtraction with 1 common element failed")
    a, b = [1,2,3,3], [3]
    assert_equal([1,2], a-b, "Subtraction with 1 element matching 2 failed")
    a, b = [1,2,2,3], [3,1]
    assert_equal([2,2], a-b, "Subtraction with lasting dups and ordering failed")
    a, b = [1,2,2,3], [2,3,1]
    assert_equal([], a-b, "Subtraction with 0 results did not give an empty array")
    assert_equal([1,2,2,3], a-[], "Subtraction of emtpty array did not yield original")
  end
  
  def test_lt_lt
    a = [1,2,3]
    assert_equal([1,2,3,4], a<<4, "<< didn't append a number")
    assert_equal([1,2,3,4,"A"], a<<"A", "<< didn't append a string")
    assert_equal([1,2,3,4,"A",[1,2]], a<<[1,2], "<< didn't append an array")
    assert_equal([1], []<<1, "<< didn't append on an empty array")
  end
  
  def test_ufo
    a, b = [1,2,3], [1,2,3]
    assert_equal(0, a<=>b, "<=> did not equate two identical arrays")
    a, b = [1,2,3], [1,2,4]
    assert_equal(-1, a<=>b, "<=> did not find a greater than with 1 diff integer")
    a, b = [1,3,3], [1,2,4]
    assert_equal(1, a<=>b, "<=> did not find a less than with 1 diff integer")
    a, b = ["a", "b", "c"], ["a", "c", "d"]
    assert_equal(-1, a<=>b, "<=> did not compare strings correctly")
    a, b = [1,2,3], [1,2]
    assert_equal(1, a<=>b, "<=> did not compare diff length arrays correctly")
    a, b = [1,2,3], []
    assert_equal(1, a<=>b, "<=> did not compare an empty array correctly")
  end
  
  def test_eq_eq
    a, b = [1,2,3], [1,2,3]
    assert(a==b, "Equality failing with same contents")
    a, b = [1,2,3], [1,3,2]
    assert_equal(false, a==b, "Equality failing on mis ordered arrays")
    a, b = [1,2,3], [1,2,4]
    assert_equal(false, a==b, "Equality failing on mis ordered arrays")
    a, b = [], []
    assert(a==b, "Equality failing on empty arrays")
  end
  
  def test_brackets
    a = [1,2,3,4,5]
    assert_equal(1, a[0], "Indexing by a single fixnum failed")
    assert_equal([1,2], a[0,2], "Indexing by a start and count failed")
    assert_equal([2,3,4], a[1..3], "Indexing by a range failed")
    assert_equal([4,5], a[3..9], "Indexing with partial matching range failed")
    assert_equal(nil, a[6], "Indexing out of range didn't return nil")
    assert_equal(nil, a[6,2], "Indexing out of range with a start/count didn't return nil")
    assert_equal(nil, a[6..12], "Indexing out of range with a range didn't return nil")
    assert_equal(nil, a[-7], "Indexing out of range with a negative didn't return nil")
    assert_equal(4, a[-2], "Indexing with a negative failed")
    assert_equal([3,4], a[-3,2], "Indexing with negative start and positive count failed")
    assert_equal(nil, a[-3,-4], "Indexing with negative start and negative count failed")
  end
  
  def test_bracket_equals
    a = Array.new
    a[4] = 4
    assert_equal([nil,nil,nil,nil,4], a, "Setting the tail end of an array element failed")
    a[0,1] = 0
    assert_equal([0,nil,nil,nil,4], a, "Setting with a start and length failed")
    a[1..2] = [1,2]
    assert_equal([0,1,2,nil,4], a, "Setting with a range and array value failed")
    a[-2]  = 3
    assert_equal([0,1,2,3,4], a, "Setting with a negative index failed")
    a[2] = nil
    assert_equal([0,1,nil,3,4], a, "Setting to nil failed")
    a[2,1] = nil
    assert_equal([0,1,3,4], a, "Settnig to nil with an array did not delete")
    assert_raise IndexError do
      a[-123] = 1
    end
  end
  
  def test_assoc
    s1 = ["colors", "red", "blue", "green"] 
    s2 = ["numbers", 1, 2, 3]
    s3 = ["letters", "a", "b", "c"]
    s4 = "non-sub"
    a = [s1, s2, s3, s4]
    
    assert_equal(["letters", "a", "b", "c" ], a.assoc("letters"), "Association failed on array")  
    assert_equal(["numbers", 1, 2, 3], a.assoc("numbers"), "Association on a sub array wit non-strings failed")    
    assert_equal(nil, a.assoc("red"), "Association on a non-first element failed")    
    assert_equal(nil, a.assoc("non-sub"), "Association on non-sub array failed" )
  end
  
  def test_at
    a = [1,2,3,4,5]
    assert_equal(1, a.at(0), "Array.at with a single fixnum failed")
    assert_equal(nil, a.at(6), "Array.at with a positive out of range didn't return nil")
    assert_equal(nil, a.at(-7), "Array.at with a negative out of range with a negative didn't return nil")
    assert_equal(4, a.at(-2), "Array.at with a negative failed")
  end
  
  def test_clear
    org = [1,2,3]
    mod = org.clear
    assert_equal([], mod, "Clear returned a non-empty array")
    assert_equal([], org, "Clear did not wipe out the original array")
  end
  
  def test_collect
    a = ["a","b","c"]
    b = a.collect {|x| x+"!"}
    assert_equal(["a!","b!","c!"], b, "Array collect failed")
    assert_equal(["a","b","c"], a, "Array collect modified original")
    
    a = ["a"]
    b = a.collect {|x| x+"!"}
    assert_equal(["a!"], b, "Array collect on a single element failed")
    
    a = []
    b = a.collect {|x| x+"!"}
    assert_equal([], b, "Array collect on an empty array failed")
  end
  
  def test_collect!
    a = ["a","b","c"]
    b = a.collect! {|x| x+"!"}
    assert_equal(["a!","b!","c!"], b, "Array collect! failed")
    assert_equal(["a!","b!","c!"], a, "Array collect! didn't modify original")
  end
  
  def test_compact
    a = ["a", nil, "b", nil, "c"]
    assert_equal(["a","b","c"], a.compact, "Array compact failed")
    assert_equal(["a", nil, "b", nil, "c"], a, "Array compact modified original")
    a = [nil, nil, nil]
    assert_equal([], a.compact, "Array compact with all nils failed")
  end
  
  def test_compact!
    a = ["a", nil, "b", nil, "c"]
    assert_equal(["a","b","c"], a.compact!, "Array compact! failed")
    assert_equal(["a", "b", "c"], a, "Array compact! modified original")
    a = [nil, nil, nil]
    assert_equal([], a.compact!, "Array compact! with all nils failed")
  end
  
  def test_concat
    a = ["a", "b"]
    b = ["c", "d"]
    assert_equal(["a", "b", "c", "d"], a.concat(b), "Array concat failed")
    assert_equal(["a", "b", "c", "d"], a, "Array concat did not change original")
    assert_equal(["c", "d"], b.concat([]), "Concat with an empty param failed")
    assert_equal(["c", "d"], [].concat(b), "Concat on an empty array failed")
  end
  
  def test_dclone
    flunk("Not Yet Implemented!")
  end
  
  def test_delete
    flunk("Not Yet Implemented!")
  end
  
  def test_delete_at
    flunk("Not Yet Implemented!")
  end
  
  def test_delete_if
    flunk("Not Yet Implemented!")
  end
  
  def test_each
    flunk("Not Yet Implemented!")
  end
  
  def test_each_index
    flunk("Not Yet Implemented!")
  end
  
  def test_empty?
    flunk("Not Yet Implemented!")
  end
  
  def test_eql?
    flunk("Not Yet Implemented!")
  end
  
  def test_fetch
    flunk("Not Yet Implemented!")
  end
  
  def test_fill
    flunk("Not Yet Implemented!")
  end
  
  def test_first
    a = [1, 2, 3, 4, 5]
    
    assert_equal(1, a.first, "First did not return the first element")
    assert_equal([1], a.first(1), "First(1) did not return the first element")
    assert_equal([1,2,3], a.first(3), "First(3) did not return the first three elements")
    assert_equal(a, a.first(a.length), "First(len) did not return all elements")
    assert_equal(a, a.first(a.length + 1), "First(len+1) did not return all elements")
    assert_raise ArgumentError do 
      a.first(-1)
    end
    
    assert_equal(nil, [].first, "First on an empty did not return nil")
  end
  
  def test_flatten
    flunk("Not Yet Implemented!")
  end
  
  def test_flatten!
    flunk("Not Yet Implemented!")
  end
  
  def test_frozen?
    flunk("Not Yet Implemented!")
  end
  
  def test_hash
    flunk("Not Yet Implemented!")
  end
  
  def test_include?
    flunk("Not Yet Implemented!")
  end
  
  def test_index
    flunk("Not Yet Implemented!")
  end
  
  def test_indexes
    flunk("Not Yet Implemented!")
  end
  
  def test_indices
    flunk("Not Yet Implemented!")
  end
  
  def test_initialize_copy
    flunk("Not Yet Implemented!")
  end
  
  def test_insert
    flunk("Not Yet Implemented!")
  end
  
  def test_inspect
    flunk("Not Yet Implemented!")
  end
  
  def test_join
    flunk("Not Yet Implemented!")
  end
  
  def test_last
    a = [1, 2, 3, 4, 5]
    
    assert_equal(5, a.last, "Last did not return the last element")
    assert_equal([5], a.last(1), "Last(1) did not return the last element")
    assert_equal([3,4,5], a.last(3), "Last(3) did not return the last three elements")
    assert_equal(a, a.last(a.length), "Last(len) did not return all elements")
    assert_equal(a, a.last(a.length + 1), "Last(len+1) did not return all elements")
    assert_raise ArgumentError do 
      a.last(-1)
    end
    
    assert_equal(nil, [].last, "Last on an empty did not return nil")
  end
  
  def test_length
    a = [1,2,3]
    
    assert_equal(3, a.size, "Length did not return correct length")
    assert_equal(0, [].size, "Length did not return 0 on an empty array")
    assert_equal(a.length, a.size, "Length did not equal size")
  end
  
  def test_map
    flunk("Not Yet Implemented!")
  end
  
  def test_map!
    flunk("Not Yet Implemented!")
  end
  
  def test_nitems
    flunk("Not Yet Implemented!")
  end
  
  def test_pack
    flunk("Not Yet Implemented!")
  end
  
  def test_pop
    flunk("Not Yet Implemented!")
  end
  
  def test_pretty_print
    flunk("Not Yet Implemented!")
  end
  
  def test_pretty_print_cycle
    flunk("Not Yet Implemented!")
  end
  
  def test_push
    flunk("Not Yet Implemented!")
  end
  
  def test_quote
    flunk("Not Yet Implemented!")
  end
  
  def test_rassoc
    flunk("Not Yet Implemented!")
  end
  
  def test_reject
    flunk("Not Yet Implemented!")
  end
  
  def test_reject!
    flunk("Not Yet Implemented!")
  end
  
  def test_replace
    flunk("Not Yet Implemented!")
  end
  
  def test_reverse
    flunk("Not Yet Implemented!")
  end
  
  def test_reverse!
    flunk("Not Yet Implemented!")
  end
  
  def test_reverse_each
    flunk("Not Yet Implemented!")
  end
  
  def test_rindex
    flunk("Not Yet Implemented!")
  end
  
  def test_select
    flunk("Not Yet Implemented!")
  end
  
  def test_shift
    flunk("Not Yet Implemented!")
  end
  
  def test_size
    a = [1,2,3]
    
    assert_equal(3, a.size, "Size did not return correct size")
    assert_equal(0, [].size, "Size did not return 0 on an empty array")
    assert_equal(a.size, a.length, "Size did not equal length")
  end
  
  def test_slice
    flunk("Not Yet Implemented!")
  end
  
  def test_slice!
    flunk("Not Yet Implemented!")
  end
  
  def test_sort
    flunk("Not Yet Implemented!")
  end
  
  def test_sort!
    flunk("Not Yet Implemented!")
  end
  
  def test_to_a
    flunk("Not Yet Implemented!")
  end
  
  def test_to_ary
    flunk("Not Yet Implemented!")
  end
  
  def test_to_s
    flunk("Not Yet Implemented!")
  end
  
  def test_to_yaml
    flunk("Not Yet Implemented!")
  end
  
  def test_transpose
    flunk("Not Yet Implemented!")
  end
  
  def test_uniq
    flunk("Not Yet Implemented!")
  end
  
  def test_uniq!
    flunk("Not Yet Implemented!")
  end
  
  def test_unshift
    flunk("Not Yet Implemented!")
  end
  
  def test_values_at
    flunk("Not Yet Implemented!")
  end
  
  def test_yaml_initialize
    flunk("Not Yet Implemented!")
  end
  
  def test_zip
    flunk("Not Yet Implemented!")
  end
  
  def test_bar
    a, b = ["a","b","c"], ["b", "c", "d"]
    assert_equal(["a","b","c","d"], a|b, "Union of two arrays with two matches failed")
    b = ["d","e","f"]
    assert_equal(["a","b","c","d","e","f"], a|b, "Union of two disjoint arrays with failed")
    b = ["a","b","c"]
    assert_equal(["a","b","c"], a|b, "Union of two identical arrays failed")
    b = []
    assert_equal(["a","b","c"], a|b, "Union of an array with empty didn't produce self")
    b = ["c","b","a"]
    assert_equal(["a","b","c"], a|b, "Union of an array in reverse order didn't produce self")
  end
  
end
