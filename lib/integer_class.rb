class Integer

  def factors
    factors = []
    2.upto(self) do |i|
      if self % i == 0
        if self != i
          factors << i
        end
      end
    end
    factors
  end

end
