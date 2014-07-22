class My_Vector < Vector

  def distance(v2)

    vector_one = self.to_a()
    vector_two = v2.to_a()

    d = ((vector_two[0] - vector_one[0]).exp(2)) + ((vector_two[1] - vector_one[1]).exp(2)).sqrt(2)
    d
  end

end
