class DrivingStat < ActiveRecord::Base
  belongs_to :user

  default_scope { where("ended_at >= ? AND ended_at <= ?",
                        DateTime.now - 7.days,
                        DateTime.now) }
end
