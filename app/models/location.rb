class Location < ApplicationRecord
  has_many :crowd_reports, dependent: :destroy
end