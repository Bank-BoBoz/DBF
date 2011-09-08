class Log < ActiveRecord::Base

belongs_to :user

CATEGORY = %w[Unfilled Before_Breakfast Breakfast Before_Lunch Lunch Before_Dinner Dinner During_Night Bedtime]

end
