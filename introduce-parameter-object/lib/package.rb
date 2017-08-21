class Package
  attr_reader :volume, :height, :length, :weight, :width

  def initialize(height:, length:, weight:, width:)
    @height  = height
    @length  = length
    @weight  = weight
    @width   = width
  end

  def volume
    height * length * width
  end
end
