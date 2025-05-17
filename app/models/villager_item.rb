class VillagerItem < ApplicationRecord
  belongs_to :villager
  belongs_to :item
  belongs_to :point
end
