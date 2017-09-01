class NoSubscription
  def has_mentoring?
    false
  end

  def charge(_credit_card)
  end

  def price
    0
  end

  def plan_name
    'No Plan'
  end
end
