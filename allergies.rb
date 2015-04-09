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
