gem 'minitest'
require 'minitest/autorun'
require_relative 'allergies'

class AllergyTest < Minitest::Test

  def test_it_returns_2_foods_for_which_person_has_allergies
    assert_equal ['chocolate','peanuts'], Allergy.diagnose(34)
    assert_equal ['peanuts','eggs'], Allergy.diagnose(3)
    assert_equal ['strawberries','shellfish'], Allergy.diagnose(12)
  end

  def test_it_returns_3_foods_for_which_person_has_allergies
    assert_equal ['chocolate','peanuts','eggs'], Allergy.diagnose(35)
  end
end
