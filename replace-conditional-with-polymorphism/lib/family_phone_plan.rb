class FamilyPhonePlan
  COST_PER_EXTRA_PHONE = 10

  def initialize(number_of_phones:, price:)
    @number_of_phones = number_of_phones
    @price = price
  end

  def cost
    number_of_extra_phones = number_of_phones - 1

    price + (number_of_extra_phones * COST_PER_EXTRA_PHONE)
  end

  private

  attr_reader :number_of_phones, :price
end
