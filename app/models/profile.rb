class Profile < ApplicationRecord
  has_many :accountprofile, dependent: :destory
  has_many :employeeprofile, dependent: :destory
  belongs_to :account, dependent: :destory
  belongs_to :employee, dependent: :destory
  with_optinons presence: true do
    validates :first_name
    validates :last_name
    validates :first_name_kana
    validates :last_name_kana
    validates :gender
    validates :phone
    validates :date_of_birth
  end
end