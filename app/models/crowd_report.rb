class CrowdReport < ApplicationRecord
  belongs_to :location
  has_many :comments, dependent: :destroy
end
