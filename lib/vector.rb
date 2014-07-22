require 'matrix'

class My_Vector < Vector

  def self.path_length(*vectors)
    path_length = 0
    size = vectors.size - 2

    0.upto(size) do |i|
      path_length += vectors[i].distance(vectors[i+1])
    end
    path_length
  end

  def self.calculate_angle(v1, v2)
    v1.calculate_angle(v2)
  end

  def calculate_angle(v)
    x = (v[0]*v[1] + self[0]*self[1]) / Math.sqrt((v[1]**2 + self[1]**2)) * Math.sqrt((v[0]**2 + self[0]**2))
    Math.acos(x)
  end

  def distance(v2)
    Math.sqrt((v2[0] - self[0])**2 + (v2[1] - self[1])**2)
  end

  def <<(n)
    My_Vector.elements(self.to_a << n)
  end
end
