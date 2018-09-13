class Meeting < ApplicationRecord
  belongs_to :speaker

  validates :title, length: {minimum: 2}
  validates :title, length:  {maximum: 40}
  validates :agenda, length: {maximum: 40} 
  validates :agenda, length: {minimum: 2}
  validates :agenda, length: {maximum: 40} 
  validates :time, presence: true
  validates :time, numericality: true
  
  def friendly_created_at
    created_at.strftime("%A, %b %d")
  end 

  def friendly_updated_at
    updated_at.strftime("%A, %b %d")
  end 
end
