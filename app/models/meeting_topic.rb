class MeetingTopic < ApplicationRecord
  belongs_to :meeting 
  belongs_to :topic

  def friendly_created_at
    created_at.strftime("%A, %b %d")
  end 

  def friendly_updated_at
    updated_at.strftime("%A, %b %d")
  end 
end
