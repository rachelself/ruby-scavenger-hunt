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

  def distance(v2)
    Math.sqrt((v2[0] - self[0])**2 + (v2[1] - self[1])**2)
  end

  def <<(n)
    self << n
  end
end
