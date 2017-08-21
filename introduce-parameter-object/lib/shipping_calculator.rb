class ShippingCalculator
  def initialize(shipping: NormalShipping)
    @shipping = shipping
  end

  def calculate_cost(package)
    @shipping.calculate_cost(package).round(2)
  end
end
