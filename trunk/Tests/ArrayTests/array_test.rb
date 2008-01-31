require "test/unit"
class ArrayTest < Test::Unit::TestCase
  
  def test_ampersand
fail("Not Yet Implemented!")
  end
  
  def test_star
fail("Not Yet Implemented!")
  end
  
  def test_plus
fail("Not Yet Implemented!")
  end
  
  def test_minus
fail("Not Yet Implemented!")
  end
  
  def test_lt_lt
    a = [1,2,3]
    assert_equal([1,2,3,4], a<<4, "<< didn't append a number")
    assert_equal([1,2,3,4,"A"], a<<"A", "<< didn't append a string")
    assert_equal([1], []<<1, "<< didn't append on an empty array")
  end
  
  def test_ufo
fail("Not Yet Implemented!")
  end
  
  def test_eq_eq
fail("Not Yet Implemented!")
  end
  
  def test_brackets
fail("Not Yet Implemented!")
  end
  
  def test_bracket_equals
fail("Not Yet Implemented!")
  end
  
  def test_abbrev
fail("Not Yet Implemented!")
  end
  
  def test_assoc
fail("Not Yet Implemented!")
  end
  
  def test_at
fail("Not Yet Implemented!")
  end
  
  def test_clear
    org = [1,2,3]
    mod = org.clear
    assert_equal([], mod, "Clear returned a non-empty array")
    assert_equal([], org, "Clear did not wipe out the original array")
  end
  
  def test_collect
fail("Not Yet Implemented!")
  end
  
  def test_collect!
fail("Not Yet Implemented!")
  end
  
  def test_compact
fail("Not Yet Implemented!")
  end
  
  def test_compact!
fail("Not Yet Implemented!")
  end
  
  def test_concat
fail("Not Yet Implemented!")
  end
  
  def test_dclone
fail("Not Yet Implemented!")
  end
  
  def test_delete
fail("Not Yet Implemented!")
  end
  
  def test_delete_at
fail("Not Yet Implemented!")
  end
  
  def test_delete_if
fail("Not Yet Implemented!")
  end
  
  def test_each
fail("Not Yet Implemented!")
  end
  
  def test_each_index
fail("Not Yet Implemented!")
  end
  
  def test_empty?
fail("Not Yet Implemented!")
  end
  
  def test_eql?
fail("Not Yet Implemented!")
  end
  
  def test_fetch
fail("Not Yet Implemented!")
  end
  
  def test_fill
fail("Not Yet Implemented!")
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
fail("Not Yet Implemented!")
  end
  
  def test_flatten!
fail("Not Yet Implemented!")
  end
  
  def test_frozen?
fail("Not Yet Implemented!")
  end
  
  def test_hash
fail("Not Yet Implemented!")
  end
  
  def test_include?
fail("Not Yet Implemented!")
  end
  
  def test_index
fail("Not Yet Implemented!")
  end
  
  def test_indexes
fail("Not Yet Implemented!")
  end
  
  def test_indices
fail("Not Yet Implemented!")
  end
  
  def test_initialize_copy
fail("Not Yet Implemented!")
  end
  
  def test_insert
fail("Not Yet Implemented!")
  end
  
  def test_inspect
fail("Not Yet Implemented!")
  end
  
  def test_join
fail("Not Yet Implemented!")
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
fail("Not Yet Implemented!")
  end
  
  def test_map!
fail("Not Yet Implemented!")
  end
  
  def test_nitems
fail("Not Yet Implemented!")
  end
  
  def test_pack
fail("Not Yet Implemented!")
  end
  
  def test_pop
fail("Not Yet Implemented!")
  end
  
  def test_pretty_print
fail("Not Yet Implemented!")
  end
  
  def test_pretty_print_cycle
fail("Not Yet Implemented!")
  end
  
  def test_push
fail("Not Yet Implemented!")
  end
  
  def test_quote
fail("Not Yet Implemented!")
  end
  
  def test_rassoc
fail("Not Yet Implemented!")
  end
  
  def test_reject
fail("Not Yet Implemented!")
  end
  
  def test_reject!
fail("Not Yet Implemented!")
  end
  
  def test_replace
fail("Not Yet Implemented!")
  end
  
  def test_reverse
fail("Not Yet Implemented!")
  end
  
  def test_reverse!
fail("Not Yet Implemented!")
  end
  
  def test_reverse_each
fail("Not Yet Implemented!")
  end
  
  def test_rindex
fail("Not Yet Implemented!")
  end
  
  def test_select
fail("Not Yet Implemented!")
  end
  
  def test_shift
fail("Not Yet Implemented!")
  end
  
  def test_size
    a = [1,2,3]
    
    assert_equal(3, a.size, "Size did not return correct size")
    assert_equal(0, [].size, "Size did not return 0 on an empty array")
    assert_equal(a.size, a.length, "Size did not equal length")
  end
  
  def test_slice
fail("Not Yet Implemented!")
  end
  
  def test_slice!
fail("Not Yet Implemented!")
  end
  
  def test_sort
fail("Not Yet Implemented!")
  end
  
  def test_sort!
fail("Not Yet Implemented!")
  end
  
  def test_to_a
fail("Not Yet Implemented!")
  end
  
  def test_to_ary
fail("Not Yet Implemented!")
  end
  
  def test_to_s
fail("Not Yet Implemented!")
  end
  
  def test_to_yaml
fail("Not Yet Implemented!")
  end
  
  def test_transpose
fail("Not Yet Implemented!")
  end
  
  def test_uniq
fail("Not Yet Implemented!")
  end
  
  def test_uniq!
fail("Not Yet Implemented!")
  end
  
  def test_unshift
fail("Not Yet Implemented!")
  end
  
  def test_values_at
fail("Not Yet Implemented!")
  end
  
  def test_yaml_initialize
fail("Not Yet Implemented!")
  end
  
  def test_zip
fail("Not Yet Implemented!")
  end
  
  def test_bar
fail("Not Yet Implemented!")
  end
  
end
