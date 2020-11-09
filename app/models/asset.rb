class Asset < ApplicationRecord
  validates :name, presence: true
  validates :watts, presence: true
  validates :active, presence: true
  validates :restarted_at, presence: true
end
