require "spec_helper"

describe FamilyPhonePlan do
  describe "#cost" do
    it "discounts each additional phone" do
      phone_plan = FamilyPhonePlan.new(
        number_of_phones: 3,
        price: 40,

      )
      expect(phone_plan.cost).to eq 60
    end
  end
end
