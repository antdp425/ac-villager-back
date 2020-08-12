class Island < ApplicationRecord
  validates :name, :owner, presence: true
  validates :villager_ids, length: { maximum: 10 }
  has_many :villagers, :dependent => :destroy
end
