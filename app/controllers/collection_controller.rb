class CollectionController < ApplicationController

  def index

    @collections = Collection.order(:position)
    

  end

  def new

    collection1 = Collection.create(name: 'Collection 1', position: 1)

      item1 = Item.create(name: Item.random_name, position: 1, collection: collection1)
      item2 = Item.create(name: Item.random_name, position: 2, collection: collection1)
      item3 = Item.create(name: Item.random_name, position: 3, collection: collection1)
      item4 = Item.create(name: Item.random_name, position: 4, collection: collection1)
      item5 = Item.create(name: Item.random_name, position: 5, collection: collection1)

    
    collection2 = Collection.create(name: 'Collection 2', position: 2)

      item1 = Item.create(name: Item.random_name, position: 1, collection: collection2)
      item2 = Item.create(name: Item.random_name, position: 2, collection: collection2)
      item3 = Item.create(name: Item.random_name, position: 3, collection: collection2)
      item4 = Item.create(name: Item.random_name, position: 4, collection: collection2)
      item5 = Item.create(name: Item.random_name, position: 5, collection: collection2)

    collection3 = Collection.create(name: 'Collection 3', position: 3)   

      item1 = Item.create(name: Item.random_name, position: 1, collection: collection3)
      item2 = Item.create(name: Item.random_name, position: 2, collection: collection3)
      item3 = Item.create(name: Item.random_name, position: 3, collection: collection3)
      item4 = Item.create(name: Item.random_name, position: 4, collection: collection3)
      item5 = Item.create(name: Item.random_name, position: 5, collection: collection3)

  end

  def sort

    @collection = Collection.find(params['collection'])
    @collection.items.each do |item|
      item.position = params['item'].index(item.id.to_s) + 1
      
      item.save
    end
    @collection.save
    render :nothing => true

  end
    
  


end
