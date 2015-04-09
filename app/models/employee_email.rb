class EmployeeEmail < ActiveRecord::Base
    validates :email, uniqueness: true
end
