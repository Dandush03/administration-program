class Organization < ApplicationRecord
  has_many :org_user_list, dependent: :destroy
  has_many :clients
end
