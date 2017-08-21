class ShippingCalculator
  EXPRESS_CONVERSION_FACTOR = 3.33
  EXPRESS_RATE = 4.25
  NORMAL_CONVERSION_FACTOR = 6.67
  NORMAL_RATE = 2.75

  def calculate_cost(package, express: false)
    if express
      express_shipping(package)
    else
      normal_shipping(package)
    end
  end

  private

  def express_shipping(package)
    weight_cost = (package.weight / EXPRESS_CONVERSION_FACTOR)

    (package.volume * weight_cost * EXPRESS_RATE).round(2)
  end

  def normal_shipping(package)
    weight_cost = (package.weight / NORMAL_CONVERSION_FACTOR)

    (package.volume * weight_cost * NORMAL_RATE).round(2)
  end
end
