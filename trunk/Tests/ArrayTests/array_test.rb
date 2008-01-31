require "test/unit"
class ArrayTest < Test::Unit::TestCase
  
  def test_ampersand
    
  end
  
  def test_star
    
  end
  
  def test_plus
    
  end
  
  def test_minus
    
  end
  
  def test_lt_lt
    a = [1,2,3]
    assert_equal([1,2,3,4], a<<4, "<< didn't append a number")
    assert_equal([1,2,3,4,"A"], a<<"A", "<< didn't append a string")
    assert_equal([1], []<<1, "<< didn't append on an empty array")
  end
  
  def test_ufo
    
  end
  
  def test_eq_eq
    
  end
  
  def test_brackets
    
  end
  
  def test_bracket_equals
    
  end
  
  def test_abbrev
    
  end
  
  def test_assoc
    
  end
  
  def test_at
    
  end
  
  def test_clear
    org = [1,2,3]
    mod = org.clear
    assert_equal([], mod, "Clear returned a non-empty array")
    assert_equal([], org, "Clear did not wipe out the original array")
  end
  
  def test_collect
    
  end
  
  def test_collect!
    
  end
  
  def test_compact
    
  end
  
  def test_compact!
    
  end
  
  def test_concat
    
  end
  
  def test_dclone
    
  end
  
  def test_delete
    
  end
  
  def test_delete_at
    
  end
  
  def test_delete_if
    
  end
  
  def test_each
    
  end
  
  def test_each_index
    
  end
  
  def test_empty?
    
  end
  
  def test_eql?
    
  end
  
  def test_fetch
    
  end
  
  def test_fill
    
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
    
  end
  
  def test_flatten!
    
  end
  
  def test_frozen?
    
  end
  
  def test_hash
    
  end
  
  def test_include?
    
  end
  
  def test_index
    
  end
  
  def test_indexes
    
  end
  
  def test_indices
    
  end
  
  def test_initialize_copy
    
  end
  
  def test_insert
    
  end
  
  def test_inspect
    
  end
  
  def test_join
    
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
    
  end
  
  def test_map
    
  end
  
  def test_map!
    
  end
  
  def test_nitems
    
  end
  
  def test_pack
    
  end
  
  def test_pop
    
  end
  
  def test_pretty_print
    
  end
  
  def test_pretty_print_cycle
    
  end
  
  def test_push
    
  end
  
  def test_quote
    
  end
  
  def test_rassoc
    
  end
  
  def test_reject
    
  end
  
  def test_reject!
    
  end
  
  def test_replace
    
  end
  
  def test_reverse
    
  end
  
  def test_reverse!
    
  end
  
  def test_reverse_each
    
  end
  
  def test_rindex
    
  end
  
  def test_select
    
  end
  
  def test_shift
    
  end
  
  def test_size
    a = [1,2,3]
    
    assert_equal(3, a.size, "Size did not return correct size")
    assert_equal(0, [].size, "Size did not return 0 on an empty array")
    assert_equal(a.size, a.length, "Size did not equal length")
  end
  
  def test_slice
    
  end
  
  def test_slice!
    
  end
  
  def test_sort
    
  end
  
  def test_sort!
    
  end
  
  def test_to_a
    
  end
  
  def test_to_ary
    
  end
  
  def test_to_s
    
  end
  
  def test_to_yaml
    
  end
  
  def test_transpose
    
  end
  
  def test_uniq
    
  end
  
  def test_uniq!
    
  end
  
  def test_unshift
    
  end
  
  def test_values_at
    
  end
  
  def test_yaml_initialize
    
  end
  
  def test_zip
    
  end
  
  def test_bar
    
  end
  
end
