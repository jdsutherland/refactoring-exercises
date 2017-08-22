class IndividualPhonePlan
  def initialize(number_of_phones:, price:)
    @number_of_phones = number_of_phones
    @price = price
  end

  def cost
    number_of_phones * price
  end

  private

  attr_reader :number_of_phones, :price
end
