class NormalShipping
  CONVERSION_FACTOR = 6.67
  RATE = 2.75

  def self.calculate_cost(package)
    weight_cost = (package.weight / CONVERSION_FACTOR)

    package.volume * weight_cost * RATE
  end
end
