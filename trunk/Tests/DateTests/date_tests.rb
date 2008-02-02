require 'date'
require 'test/unit'
class DateTest < Test::Unit::TestCase

#  def test_getMethodNames
#    Date.new.public_methods.sort.each { |val| puts " def test_#{val}\n\n end\n" }
#  end
  
  def test_gregorianIs
   assert Date.today.gregorian?
   assert !Date.today.julian.gregorian?
 end
 
 def test_julianIs
   assert !Date.today.julian?
   assert Date.today.julian.julian?
 end
 
 def test_julian
   #region how do I figure out a julian date from a gregorian date?
   #puts Date.today.julian
   #puts Date.today
 end
 
 def test_nilIs
   aDate = Date.today
   assert !aDate.nil?
   aDate = nil
   assert aDate.nil?
 end
 
 def test_display
   #WTF does display exactly return?
   
   #aDate = Date.new 2008,1,30
   #puts aDate
   #display = aDate.display
   #display = `2008-01-31`.display
   #puts display
   #assert display == "2008-01-30\n"
 end
 
 def test_year
   aDate = Date.new 2008,1,30
   assert aDate.year == 2008
 end
 
 def test_month
   aDate = Date.new 2008,1,30
   assert aDate.month == 1
 end
 
  def test_day
   aDate = Date.new 2008,1,30
   assert aDate.day == 30
 end
 
 def test_nsIs
   #Does a given Julian Day Number fall inside the new-style (Gregorian) calendar? 
   aDate = Date.new 2008,1,30
   assert aDate.ns?
   aDate = Date.new 100,1,1
   assert !aDate.ns?
 end
 
 def test_jd
   #gets the date as a julian day number.
   aDate = Date.new 2008,1,30
   
   jd = getJd 2008,1, 30

   assert aDate.jd == jd
 end
 
 def test_wday
   assert Date.new(2008,1,30).wday == 3
 end
 
 def test_upto
   counter = 0
   start = Date.new(2008,1,30)
   start.upto(start.jd + 500) do |date|
     assert start + counter == date
     counter = counter + 1
   end
   assert(counter == 501)
 end
 
 def test_downto
   counter = 0
   start = Date.new(2008,1,30)
   start.downto(start.jd - 500) do |date|
     assert(start - counter == date)
     counter = counter + 1
   end
   assert(counter == 500)
 end
 
 def test_succ
   aDate = Date.new(2008,1,30)
   assert aDate.succ == Date.new(2008,1,31)
 end
 
 def test_next
   aDate = Date.new(2008,1,30)
   assert aDate.next == Date.new(2008,1,31)
 end
 
 def test_leapIs
   aDate = Date.new(2008,1,30)
   assert aDate.leap?
   aDate = Date.new(2007,1,30)
   assert !aDate.leap?
 end
 
 def test_plus
   aDate = Date.new(2008,1,30)
   expected = Date.new(2008,1,31)
   actual = aDate + 1;
   assert_equal(actual, expected, "<< Actual date did not match expected.")
 end
 
 def test_minus
   aDate = Date.new(2008,1,30)
   expected = Date.new(2008,1,29)
   actual = aDate - 1;
   assert_equal(actual, expected, "<< Actual date did not match expected.")
 end
 
 def test_less
   aDate = Date.new(2008,1,30)
   otherDate = Date.new(2009,1,30)
   assert aDate < otherDate
 end
 
 def test_doubleless
   
 end
 
 def test_lesthanequal
   aDate = Date.new(2008,1,30)
   equalDate = Date.new(2008,1,30)
   otherDate = Date.new(2009,1,30)
   assert aDate <= equalDate
   assert aDate <= otherDate
 end
 
 def test_equal
   aDate = Date.new(2008,1,30)
   equalDate = aDate
   assert aDate == equalDate
 end
 
 def test_equals
   assert Date.new(2008,1,30) == Date.new(2008,1,30)
 end
 
 def test_tripleequals
   
 end
 
 def test_equalsnina

 end
 
 def test_greaterthan
   aDate = Date.new(2008,1,30)
   otherDate = Date.new(2007,1,30)
   assert aDate > otherDate
 end
 
 def test_greaterthanequal
   aDate = Date.new(2008,1,30)
   equalDate = Date.new(2008,1,30)
   otherDate = Date.new(2007,1,30)
   assert aDate >= equalDate
   assert aDate >= otherDate
 end
 
 def test_doublegreater

 end

 def test_ajd

 end
 
 def test_amjd

 end
 
 def test_asctime

 end
 
 def test_between?
    aDate = Date.new(2008,1,30)
    startDate = Date.new(2008,1,1)
    endDate = Date.new(2008,2,1)
    assert(aDate.between?(startDate, endDate))
    aDate = Date.new(2009,1,30)
    assert(!aDate.between?(startDate, endDate))
 end
 
 def test_class

 end
 
 def test_clone

 end
 
 def test_ctime

 end
 
 def test_cwday

 end
 
 def test_cweek

 end
 
 def test_cwyear

 end
  
 def test_day_fraction

 end
   
 def test_dup

 end
 
 def test_england

 end
 
 def test_eql?

 end
 
 def test_equal?

 end
 
 def test_extend

 end
 
 def test_freeze

 end
 
 def test_frozen?

 end
 
 def test_gem

 end
 
 def test_gregorian

 end
 
 def test_hash

 end
 
 def test_id

 end
 
 def test_inspect

 end
 
 def test_instance_of?

 end

 def test_is_a?

 end
 
 def test_italy

 end
 
 def test_kind_of?

 end
 
 def test_ld

 end
 
 def test_mday
    assert_equal(30, Date.new(2008,1,30).mday)
 end
 
 def test_mjd

 end
 
 def test_mon
   assert_equal(1, Date.new(2008,1,30).mon)
 end
 
 def test_new_start

 end
 
 def test_newsg

 end
 
 def test_object_id

 end
 
 def test_os?

 end
 
 def test_require

 end
 
 def test_require_gem

 end
 
 def test_respond_to?

 end
 
 def test_send

 end
 
 def test_sg

 end
  
 def test_start

 end
 
 def test_step

 end
 
 def test_strftime

 end 
 
 def test_taguri

 end
 
 def test_taguriequals

 end
 
 def test_to_a

 end
 
 def test_to_s

 end
 
 def test_to_yaml

 end
 
 def test_to_yaml_properties

 end
 
 def test_to_yaml_style

 end
 
 #this method is deprecated, but I have a test because it still exists at the moment.
 def test_type
   assert_equal(Date, Date.today.type)
 end
  
 def test_yday
   assert_equal(279,Date.new(2008,10,5).yday)
 end
 
 #static Date tests
 
 def test_civil_to_jd
   #static method which converts a given gregorian date to the amount of julian days
   assert Date.civil_to_jd(2008, 1, 30) == getJd(2008,1,30)
 end
 
 
 #helper methods
 
 def getJd year, month, day
   if year < 1583
     raise "The year must be 1583 or higher for this function to work proprely."
   end
   #This formula falls apart at dates under the year 1583 Though it is supposed to work for ALL AD dates in the gregorian calendar...
   #Source: http://scienceworld.wolfram.com/astronomy/JulianDate.html
   jd = (367 * year) - (7*(year + ((month + 9.0)/12.0)).floor/4.0).floor
   jd = jd - (3*(((year + (month - 9.0)/7.0)/100.0) + 1).floor/4.0).floor
   jd = jd + (275 * month / 9.0).floor + day + 1721028.5
   return jd.ceil
 end
  
end