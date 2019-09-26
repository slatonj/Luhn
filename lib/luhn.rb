module Luhn
  def self.is_valid?(number)
    num = number.to_s.reverse
    revnum = num.split("").map { |x| x.to_i }

    revnum.length.times do |n|
      if n.odd?
      revnum[n] *= 2
      if revnum[n] > 9
      revnum[n] -= 9
    end
  end
end

      if revnum.inject(:+) % 10 == 0
        return true
      else
        return false
    end
  end
end
