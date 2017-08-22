class BusinessPhonePlan
  MIN_PHONES_FOR_DISCOUNT = 50
  STANDARD_RATE = 0.75
  DISCOUNT_RATE = 0.50

  def initialize(number_of_phones:, price:)
    @number_of_phones = number_of_phones
    @price = price
  end

  def cost
    subtotal = number_of_phones * price

    if number_of_phones < MIN_PHONES_FOR_DISCOUNT
      subtotal * STANDARD_RATE
    else
      subtotal * DISCOUNT_RATE
    end
  end

  private

  attr_reader :number_of_phones, :price
end
