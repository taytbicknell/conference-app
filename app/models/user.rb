class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  def friendly_created_at
    created_at.strftime("%A, %b %d")
  end 

  def friendly_updated_at
    updated_at.strftime("%A, %b %d")
  end 

end
