class Item < ActiveRecord::Base
  scope :news, -> {where(type: 'New')}
  scope :comments, -> {where(type: 'Comment')}
end
