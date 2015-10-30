class Earning < ActiveRecord::Base
  belongs_to :user

  default_scope { where("earned_at >= ? AND earned_at <= ?",
                        DateTime.now - 7.days,
                        DateTime.now) }
end
