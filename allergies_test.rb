gem 'minitest'
require 'minitest/autorun'
require_relative 'allergies'

class AllergyTest < Minitest::Test

  def test_it_returns_1_when_eggs_are_passed_in
    assert_equal 1, Allergy.new.allergy_score('eggs')
  end

  def test_that_it_can_take_multiple_allergies_and_reduce
    assert_equal 3, Allergy.new.allergy_score('eggs', 'peanuts')
    assert_equal 34, Allergy.new.allergy_score('peanuts','chocalate')
  end

  def test_it_returns_2_foods_for_which_person_has_allergies
    assert_equal ['peanuts','chocalate'], Allergy.new.allergen(34)
    assert_equal ['eggs','peanuts'], Allergy.new.allergen(3)
    assert_equal ['shellfish','strawberries'], Allergy.new.allergen(12)
  end

  def test_it_returns_3_foods_for_which_person_has_allergies
    assert_equal ['eggs','peanuts','chocalate'], Allergy.new.allergen(35)
  end

end


# An allergy test produces a single numeric score which contains 
# the information about all the allergies the person has 
# (that they were tested for).

# The list of items (and their value) that were tested are:

# eggs (1)
# peanuts (2)
# shellfish (4)
# strawberries (8)
# tomatoes (16)
# chocolate (32)
# pollen (64)
# cats (128)
# So if Tom is allergic to peanuts and chocolate, he gets a score of 34.

# Now, given just that score of 34, your program should be able to say:

# Whether Tom is allergic to any one of those allergens listed above.
# All the allergens Tom is allergic to.

