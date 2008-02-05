require "test/unit"
require "rubygems"
require "spec-unit"

class HashTests < Test::Unit::TestCase
  include SpecUnit
  
  context 'when Hash is new' do
    
    def setup
      @empty_hash = Hash.new
    end
    
    def specify_equals_other_new_hash
      @empty_hash.should_equal(Hash.new)
    end
    
    def specify_doesnt_equal_hash_with_values
      h2 = { :a => "first", :b => "second" }
      @empty_hash.should_not_equal(h2)
    end
    
    def specify_brackets_should_return_nil
      @empty_hash[:blah].should_be_nil?
    end
    
    def specify_default_should_be_nil
      @empty_hash.default.should_be_nil?
    end
    
  end
  
  context 'when Hash has content and default = :foo' do
    
    def setup
      @my_hash = { :a => 'thing A', :b => 'thing B', :c => 3}
      @my_hash.default = :foo
    end
    
    def specify_doesnt_equal_new_hash
      @my_hash.should_not_equal(Hash.new)
    end
    
    def specify_should_equal_hash_with_same_keyvalue_pairs
      other_hash = { :a => 'thing A', :b => 'thing B', :c => 3}
      @my_hash.should_equal(other_hash)
    end
    
    def specify_brackets_return_value_for_key
      @my_hash[:b].should_equal "thing B"
    end
    
    def specify_brackets_return_default_when_key_not_found
      @my_hash['z'].should_equal :foo
    end
    
    def specify_default_should_be_foo
      @my_hash.default.should_equal :foo
    end
    
  end

  def test_eq_eq
    
  end
  
  def test_brackets
    
  end
  
  def test_bracket_equal
    
  end
  
  def test_clear
    
  end
  
  def test_default
    
  end
  
  def test_default_equal
    
  end
  
  def test_default_proc
    
  end
  
  def test_delete
    
  end
  
  def test_delete_if
    
  end
  
  def test_each
    
  end
  
  def test_each_key
    
  end
  
  def test_each_pair
    
  end
  
  def test_each_value
    
  end
  
  def test_empty?
    
  end
  
  def test_fetch
    
  end
  
  def test_has_key?
    
  end
  
  def test_has_value?
    
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
  
  def test_inspect
    
  end
  
  def test_invert
    
  end
  
  def test_key?
    
  end
  
  def test_keys
    
  end
  
  def test_length
    
  end
  
  def test_member?
    
  end
  
  def test_merge
    
  end
  
  def test_merge!
    
  end
  
  def test_new
    
  end
  
  def test_pretty_print
    
  end
  
  def test_pretty_print_cycle
    
  end
  
  def test_rehash
    
  end
  
  def test_reject
    
  end
  
  def test_reject!
    
  end
  
  def test_replace
    
  end
  
  def test_select
    
  end
  
  def test_shift
    
  end
  
  def test_size
    
  end
  
  def test_size
    
  end
  
  def test_sort
    
  end
  
  def test_store
    
  end
  
  def test_to_a
    
  end
  
  def test_to_hash
    
  end
  
  def test_to_s
    
  end
  
  def test_to_yaml
    
  end
  
  def test_update
    
  end
  
  def test_value?
    
  end
  
  def test_values
    
  end
  
  def test_values_at
    
  end
  
  def test_yaml_initialize
    
  end

end