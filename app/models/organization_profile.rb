class OrganizationProfile < ApplicationRecord
    has_many :events, dependent: :destroy
end
