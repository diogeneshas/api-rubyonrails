class Contact < ApplicationRecord
  belongs_to :kind
  has_many :phones
  has_one :address
  accepts_nested_attributes_for :phones, allow_destroy: true
  accepts_nested_attributes_for :address
  
  def to_br
    { name: self.name, birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?) }
  end
end
