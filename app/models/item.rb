class Item < ActiveRecord::Base
  belongs_to :collection
  accept_nested_attributes :items
end
