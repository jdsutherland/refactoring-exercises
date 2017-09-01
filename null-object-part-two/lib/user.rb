class User
  include ActiveModel::Model
  attr_accessor :created_at, :credit_card, :subscription

  def charge
    subscription.charge(credit_card)
  end

  def has_mentoring?
    subscription.has_mentoring?
  end

  def price
    subscription.price
  end

  def plan_name
    subscription.plan_name
  end

  private

  def subscription
    return FreeTrial.new if free_trial?
    @subscription ||= NoSubscription.new
  end

  def free_trial?
    created_at >= 30.days.ago
  end
end
