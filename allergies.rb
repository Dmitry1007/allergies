# require 'pry'

# class Allergy

#     HASHY = {
#       1 => "eggs",
#       2 => "peanuts",
#       4 => "shellfish",
#       8 => "strawberries",
#       16 => "tomatoes",
#       32 => "chocolate",
#       64 => "pollen",
#       128 => "cats"
#     }
  
#   def allergy_score(*allergen)
#     allergen.reduce(0) { |sum,word| sum += HASHY.invert[word] }
#   end

#   def allergen(score)
#     check_these = HASHY.values.combination(2).detect { |a,b| a + b == score }
#     spit_out_words = check_these.map { |num| HASHY.invert[num] }
#   end

# end

# a = Allergy.new
# a.allergy_score('peanuts','chocalate')
# a.allergen(34)

class Allergy

  def self.allergy_lookup
    {
      1 => "eggs",
      2 => "peanuts",
      4 => "shellfish",
      8 => "strawberries",
      16 => "tomatoes",
      32 => "chocolate",
      64 => "pollen",
      128 => "cats"
    }
  end

  def self.diagnose(score)
    allergy_report = []
    keys = allergy_lookup.keys
    keys.reverse.each do |key|
      if key <= score
        allergy_report << allergy_lookup[key]
        score -= key
      end
    end
    allergy_report
  end
end






