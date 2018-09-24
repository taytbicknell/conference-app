class Topic < ApplicationRecord
  has_many :meeting_topics
  has_many :meetings, through: :meeting_topics

  def friendly_created_at
    created_at.strftime("%A, %b %d")
  end 

  def friendly_updated_at
    updated_at.strftime("%A, %b %d")
  end 

end
