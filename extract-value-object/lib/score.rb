class Score
  attr_reader :points

  def initialize(points)
    @points = points
  end

  def grade
    case points
    when 90..100 then 'A'
    when 80..89 then  'B'
    when 70..79 then  'C'
    when 60..69 then  'D'
    when 0..59 then   'F'
    else
      raise ArgumentError, "Valid scores 0 to 100"
    end
  end

  def ==(other)
    self.class == other.class && points == other.points
  end
  alias :eql? :==
end
