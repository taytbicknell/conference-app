class Speaker < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
  validates :email, format: {
    with: URI::MailTo::EMAIL_REGEXP,
    message: 'Only valid emails allowed'
  }

  def friendly_created_at
    created_at.strftime("%A, %b %d")
  end 

  def friendly_updated_at
    updated_at.strftime("%A, %b %d")
  end 

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end   
end
