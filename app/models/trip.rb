class Trip < ApplicationRecord
  belongs_to :driver, class_name: 'User'
  has_and_belongs_to_many :riders, class_name: 'User', foreign_key: :trip_id

  validates_presence_of :trips_type
end