class ExpressShipping
  CONVERSION_FACTOR = 3.33
  RATE = 4.25

  def self.calculate_cost(package)
    weight_cost = (package.weight / CONVERSION_FACTOR)

    package.volume * weight_cost * RATE
  end
end
