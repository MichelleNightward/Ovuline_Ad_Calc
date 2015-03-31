class Company < ActiveRecord::Base
  has_many :quotes, dependent: :destroy
  validates_uniqueness_of :companyname
end
