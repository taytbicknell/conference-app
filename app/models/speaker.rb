class Speaker < ApplicationRecord
 
  has_many :meetings

  validates :first_name,length: {minimum: 2}
  validates :last_name, {minimum: 2}
  validates :age, {minimum: 18}
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
