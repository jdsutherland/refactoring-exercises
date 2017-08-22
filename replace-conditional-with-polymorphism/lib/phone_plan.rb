class PhonePlan
  def initialize(plan_type)
    @plan_type = plan_type
  end

  def cost
    @plan_type.cost
  end

  private

  attr_reader :plan_type
end
