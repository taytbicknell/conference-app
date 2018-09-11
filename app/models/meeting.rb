class Meeting < ApplicationRecord
  validates :title, presence: true
  validates :agenda, presence: true
  validates :time, presence: true

  def friendly_created_at
    created_at.strftime("%A, %b %d")
  end 

  def friendly_updated_at
    updated_at.strftime("%A, %b %d")
  end 
end
