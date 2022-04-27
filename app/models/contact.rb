class Contact < ApplicationRecord
  belongs_to :kind
  
  def author
    "Diogenes Henrique"
  end
end
