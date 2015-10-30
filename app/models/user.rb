class User < ActiveRecord::Base
  has_many :earnings
  has_many :driving_stats

  def total_earnings
    self.earnings.sum(:amount)
  end

  def total_miles_driven
    self.driving_stats.sum(:miles_driven)
  end


end
