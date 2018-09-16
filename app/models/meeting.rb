class Meeting < ApplicationRecord
  belongs_to :speaker
  
  def friendly_created_at
    created_at.strftime("%A, %b %d")
  end 

  def friendly_updated_at
    updated_at.strftime("%A, %b %d")
  end 
end
