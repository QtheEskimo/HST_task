class Item < ActiveRecord::Base
  belongs_to :collection

def self.random_name
    name = ""
    name_length = rand(5..10)
    
    name = (1..name_length).map{ ('a'..'z').to_a[rand(26)] }.join
    
    return name 

  end
  
end
