class Campaign < ActiveRecord::Base
  has_many :donors,:dependent => :destroy

  default_scope :order => 'name'
  validates :name, :description, :image_url, :expiry_date ,:presence => true
  validates :money_to_raise, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :name, :uniqueness => true
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
}

  validate :expiration_date_cannot_be_in_the_past

 def expiration_date_cannot_be_in_the_past
    if !expiry_date.blank? and expiry_date < Date.today
      errors.add(:expiry_date, "can't be in the past")
    end
  end
end
