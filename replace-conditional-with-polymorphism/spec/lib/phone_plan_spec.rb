require "spec_helper"

describe PhonePlan do
  describe "#cost" do
    it 'returns the cost of a phone plan' do
      plan_type = double('plan_type')
      phone_plan = PhonePlan.new(plan_type)
      allow(plan_type).to receive(:cost).and_return(20)

      result = phone_plan.cost

      expect(result).to eq 20
    end
  end
end
