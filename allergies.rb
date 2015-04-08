require 'pry'

class Allergy

  def initialize
    @allergy_hashy = {
      '' => 0,
      'eggs' => 1,
      'peanuts' => 2,
      'shellfish' => 4,
      'strawberries' => 8,
      'tomatoes' => 16,
      'chocalate' => 32,
      'pollen' => 64,
      'cats' => 128,
    }
  end
  
  def allergy_score(*allergen)
    allergen.reduce(0) { |sum,word| sum += @allergy_hashy[word] }
  end

  def allergen(score)
    check_these = @allergy_hashy.values.combination(2).detect { |a,b| a + b == score }

    spit_out_words = check_these.map { |num| @allergy_hashy.invert[num] }
  end

end

# a = Allergy.new
# a.allergy_score('peanuts','chocalate')
# a.allergen(34)




