require 'test/unit'
class StringTest < Test::Unit::TestCase
	
	def test_percent
		a = "%05d" % 123
		b = "%-s: %08x" % ["tjw", 256]
		assert_equal("00123", a, "String from % did not format properly")
		assert_equal("tjw: 00000100", b, "String from % with array params did not format properly")
	end
		
	def test_bracket_bracket_equals
		a = "Ruby is wicked cool"
		assert_equal(117, a[1], "a[1] did not return a fixnum")
		assert_equal("uby", a[1,3], "a[1,3] did not return three characters")
		assert_equal("Ruby is", a[0..6], "a[0..6] did not return the correct substring")
		#add regex match later -> a[regex]
	end
	
	def test_inspect
		flunk("Not Yet Implemented!")
	end
	
	def test_greater_than
		flunk("Not Yet Implemented!")
	end
	
	def test_gsub
		assert_equal("hello".gsub(/[aeiou]/, '*'), "h*ll*", "gsub did not substitue correctly")
	end
	                                                                     
	def test_comparable #<=>
		assert_equal("abcde" <=> "abcd", 1, "String comparison should have yielded 1.")
		assert_equal("abcde" <=> "abcde", 0, "String comparison should have yielded 0.")
		assert_equal("abcd" <=> "abcde", -1, "String comparison should have yielded -1.")
	end
	
	def test_casecmp
		assert_equal("aBCde".casecmp("abcd"), 1, "String comparison should have yielded 1.")
		assert_equal("abcDE".casecmp("abcde"), 0, "String comparison should have yielded 0.")
		assert_equal("abcde".casecmp("ABCDE"), 0, "String comparison should have yielded 0.")
		assert_equal("abcd".casecmp("ABCDE"), -1, "String comparison should have yielded -1.")
	end
	
	def test_to_str
		assert_equal("Ruby".to_str, "Ruby", "to_str didn't return correct string")
	end
	
	def test_tr_s
		flunk("Not Yet Implemented!")
	end
	
	def test_tr_bang
		flunk("Not Yet Implemented!")
	end
	
	def test_empty_bool
		assert(!"Ruby".empty?, "String is empty")
		assert("".empty?, "String is not empty")
	end
	                                                                     
	def test_eql_bool
		a = "Ruby"
		assert(a.eql("Ruby"), "Strings are not equal")
		assert(!a.eql("Rox"), "Strings are equal")
	end
	                                                                     
	def test_strip
		a = "  tk-421  "
		assert_equal(a.strip, "tk-421", "Strings after strip are not equal")
	end
	
	def test_strip_bang
		a = "  tk-421  "
		b = "tk-421"
		assert_equal(a.strip!, "tk-421", "Strings after strip! are not equal")
		assert_nil(b.strip!)
	end

	def test_rstrip
		a = "  tk-421  "
		assert_equal(a.rstrip, "  tk-421", "Strings after strip are not equal")
	end
	
	def test_rstrip_bang
		a = "  tk-421  "
		b = "tk-421"
		assert_equal(a.rstrip!, "  tk-421", "Strings after strip! are not equal")
		assert_nil(b.rstrip!)
	end
	
	def test_lstrip
		a = "  tk-421  "
		assert_equal(a.lstrip, "tk-421  ", "Strings after strip are not equal")
	end
	                                                                     
	def test_lstrip_bang
		a = "  tk-421  "
		b = "tk-421"
		assert_equal(a.lstrip!, "tk-421  ", "Strings after strip! are not equal")
		assert_nil(b.lstrip!)
	end
	                                                                  
	def test_asterisk
		flunk("Not Yet Implemented!")
	end
	                                                                       
	def test_match
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_grep
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_chomp_bang
		flunk("Not Yet Implemented!")
	end
	                                                                  
	def test_plus
		flunk("Not Yet Implemented!")
	end
	                                                                       
	def test_next_bang
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_swapcase
		flunk("Not Yet Implemented!")
	end
	                                                                
	def test_ljust
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_to_i
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_swapcase_bang
		flunk("Not Yet Implemented!")
	end
	
	def test_methods
		flunk("Not Yet Implemented!")
	end
	                                                                 
	def test_respond_to_bool
		flunk("Not Yet Implemented!")
	end
	                                                             
	def test_upto
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_between_bool
		flunk("Not Yet Implemented!")
	end
	                                                                
	def test_reject
		flunk("Not Yet Implemented!")
	end
	                                                                  
	def test_sum
		flunk("Not Yet Implemented!")
	end
	                                                                     
	def test_hex
		flunk("Not Yet Implemented!")
	end
	                                                                     
	def test_object_id
		flunk("Not Yet Implemented!")
	end
	                                                               
	def test_dup
		flunk("Not Yet Implemented!")
	end
	                                                                     
	def test_insert
		flunk("Not Yet Implemented!")
	end
	                                                                  
	def test_reverse_bang
		flunk("Not Yet Implemented!")
	end
	                                                                
	def test_chop
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_instance_variables
		flunk("Not Yet Implemented!")
	end
	                                                      
	def test_delete
		flunk("Not Yet Implemented!")
	end
	                                                                  
	def test_dump
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test___id__
		flunk("Not Yet Implemented!")
	end
	                                                                  
	def test_tr_s_bang
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_concat
		flunk("Not Yet Implemented!")
	end
	                                                                  
	def test_member_bool
		flunk("Not Yet Implemented!")
	end
	                                                                 
	def test_succ
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_find
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_eql_bool
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_each_with_index
		flunk("Not Yet Implemented!")
	end
	                                                                  
	def test_id
		flunk("Not Yet Implemented!")
	end
	                                                                      
	def test_rjust
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_to_f
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_singleton_methods
		flunk("Not Yet Implemented!")
	end
	                                                       
	def test_send
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_index
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_collect
		flunk("Not Yet Implemented!")
	end
	                                                                 
	def test_oct
		flunk("Not Yet Implemented!")
	end
	                                                                     
	def test_all_bool
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_slice
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_taint
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_length
		flunk("Not Yet Implemented!")
	end
	                                                                  
	def test_entries
		flunk("Not Yet Implemented!")
	end
	                                                                 
	def test_chomp
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_frozen_bool
		flunk("Not Yet Implemented!")
	end
	                                                                 
	def test_instance_variable_get
		flunk("Not Yet Implemented!")
	end
	                                                   
	def test_upcase
		flunk("Not Yet Implemented!")
	end
	                                                                  
	def test_sub_bang
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_squeeze
		flunk("Not Yet Implemented!")
	end
	                                                                 
	def test_include_bool
		flunk("Not Yet Implemented!")
	end
	                                                                
	def test___send__
		flunk("Not Yet Implemented!")
	end
	                                                                
	def test_instance_of_bool
		flunk("Not Yet Implemented!")
	end
	                                                            
	def test_upcase_bang
		flunk("Not Yet Implemented!")
	end
	                                                                 
	def test_crypt
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_delete_bang
		flunk("Not Yet Implemented!")
	end
	                                                                 
	def test_detect
		flunk("Not Yet Implemented!")
	end
	                                                                  
	def test_to_a
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_zip
		flunk("Not Yet Implemented!")
	end
	                                                                 
	def test_type
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_center
		flunk("Not Yet Implemented!")
	end
	                                                                  
	def test_less_than
		flunk("Not Yet Implemented!")
	end
	                                                                       
	def test_protected_methods
		flunk("Not Yet Implemented!")
	end
	                                                       
	def test_instance_eval
		flunk("Not Yet Implemented!")
	end
	                                                           
	def test_map
		flunk("Not Yet Implemented!")
	end
	                                                                     
	def test_rindex
		flunk("Not Yet Implemented!")
	end
	                                                                  
	def test_any_bool
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_double_equal
		flunk("Not Yet Implemented!")
	end
	                                                                      
	def test_greater_than
		flunk("Not Yet Implemented!")
	end
	                                                                       
	def test_split
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_triple_equal
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_unpack
		flunk("Not Yet Implemented!")
	end
	                                                                  
	def test_size
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_sort
		flunk("Not Yet Implemented!")
	end
	                                                                    
	def test_instance_variable_set
		flunk("Not Yet Implemented!")
	end
	                                                   
	def test_gsub_bang
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_count
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_succ_bang
		flunk("Not Yet Implemented!")
	end
	                                                                   
	def test_downcase
		flunk("Not Yet Implemented!")
	end
	                                                                
	def test_min
		flunk("Not Yet Implemented!")
	end
	                                                                     
	def test_kind_of_bool
		flunk("Not Yet Implemented!")
	end
	                                                                
	def test_exten
		flunk("Not Yet Implemented!")
	end
	
	def test_squeeze_bang
		flunk("Not Yet Implemented!")
	end
	
	def test_downcase_bang
		flunk("Not Yet Implemented!")
	end
	
	def test_intern
		flunk("Not Yet Implemented!")
	end
	
	def test_greater_than_equal
		flunk("Not Yet Implemented!")
	end
	
	def test_next
		flunk("Not Yet Implemented!")
	end
	
	def test_find_all
		flunk("Not Yet Implemented!")
	end
	
	def test_to_s
		flunk("Not Yet Implemented!")
	end
	
	def test_less_than_equal
		flunk("Not Yet Implemented!")
	end
	
	def test_display
		flunk("Not Yet Implemented!")
	end
	
	def test_each_line
		flunk("Not Yet Implemented!")
	end
	
	def test_each
		flunk("Not Yet Implemented!")
	end
	
	def test_class
		flunk("Not Yet Implemented!")
	end
	
	def test_slice_bang
		flunk("Not Yet Implemented!")
	end
	
	def test_hash
		flunk("Not Yet Implemented!")
	end
	
	def test_sub
		flunk("Not Yet Implemented!")
	end
	
	def test_tainted_bool
		flunk("Not Yet Implemented!")
	end
	
	def test_private_methods
		flunk("Not Yet Implemented!")
	end
	
	def test_replace
		flunk("Not Yet Implemented!")
	end
	
	def test_inject
		flunk("Not Yet Implemented!")
	end
	
	def test_equal_tilde
		flunk("Not Yet Implemented!")
	end
	
	def test_tr
		flunk("Not Yet Implemented!")
	end
	
	def test_reverse
		flunk("Not Yet Implemented!")
	end
	
	def test_nil_bool
		flunk("Not Yet Implemented!")
	end
	
	def test_untaint
		flunk("Not Yet Implemented!")
	end
	
	def test_sort_by
		flunk("Not Yet Implemented!")
	end
	
	def test_to_sym
		flunk("Not Yet Implemented!")
	end
	
	def test_capitalize
		flunk("Not Yet Implemented!")
	end
	
	def test_max
		flunk("Not Yet Implemented!")
	end
	
	def test_chop_bang
		flunk("Not Yet Implemented!")
	end
	
	def test_method
		flunk("Not Yet Implemented!")
	end
	
	def test_is_a_bool
		flunk("Not Yet Implemented!")
	end
	
	def test_capitalize_bang
		flunk("Not Yet Implemented!")
	end
	
	def test_scan
		flunk("Not Yet Implemented!")
	end
	
	def test_square_brackets #[]
		flunk("Not Yet Implemented!")
	end

end