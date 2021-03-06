require "spec_helper"

describe IndividualPhonePlan do
  describe "#cost" do
    it "multiples the price by the number of phones" do
      phone_plan = IndividualPhonePlan.new(
        number_of_phones: 3,
        price: 40,
      )

      expect(phone_plan.cost).to eq 120
    end
  end
end
