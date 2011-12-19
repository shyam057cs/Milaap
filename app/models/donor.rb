class Donor < ActiveRecord::Base
  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  belongs_to :campaign
 
  default_scope :order => 'name'
  validates :name, :amount ,:email,:pay_type,:presence => true
  validates :amount, :numericality => {:greater_than_or_equal_to => 1}
  validates :email, :format => {
    :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
    :message => 'Must be a valid e-mail address.'
}

end
