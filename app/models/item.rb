class Item < ApplicationRecord
  belongs_to :list
  has_many :tem_tags
  has_many :tags, :through => :item_tags
end
