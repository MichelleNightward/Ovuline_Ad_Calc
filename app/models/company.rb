class Company < ActiveRecord::Base
  has_many :quotes, dependent: :destroy
end
