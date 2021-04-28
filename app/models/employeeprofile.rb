class EmployeeProfile < Profile
  belongs_to :profile, dependent: :destroy
end