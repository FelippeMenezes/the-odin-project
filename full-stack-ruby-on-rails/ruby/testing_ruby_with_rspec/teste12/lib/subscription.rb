class Subscription
  attr_reader :plan, :user, :active

  PLANS = { basic: 29, pro: 79, enterprise: 199 }.freeze

  def initialize(user, plan)
    @user   = user
    @plan   = plan
    @active = false
  end

  def activate!
    @active = true
  end

  def price
    PLANS[plan]
  end

  def affordable?(budget)
    price <= budget
  end

  def summary
    "#{user} — #{plan} — R$#{price}"
  end
end
