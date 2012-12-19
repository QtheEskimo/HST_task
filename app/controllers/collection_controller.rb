class CollectionController < ApplicationController

  def index

  end

  def new

    collection1 = Collection.create(name: 'Collection 1', position: 1)

      item1 = Item.create(name: 'random1', position: 1, collection: collection1)
      item2 = Item.create(name: 'random2', position: 2, collection: collection1)
      item3 = Item.create(name: 'random3', position: 3, collection: collection1)
      item4 = Item.create(name: 'random4', position: 4, collection: collection1)
      item5 = Item.create(name: 'random5', position: 5, collection: collection1)

    
    collection2 = Collection.create(name: 'Collection 2', position: 2)

      item1 = Item.create(name: 'random1', position: 1, collection: collection2)
      item2 = Item.create(name: 'random2', position: 2, collection: collection2)
      item3 = Item.create(name: 'random3', position: 3, collection: collection2)
      item4 = Item.create(name: 'random4', position: 4, collection: collection2)
      item5 = Item.create(name: 'random5', position: 5, collection: collection2)

    collection3 = Collection.create(name: 'Collection 3', position: 3)   

      item1 = Item.create(name: 'random1', position: 1, collection: collection3)
      item2 = Item.create(name: 'random2', position: 2, collection: collection3)
      item3 = Item.create(name: 'random3', position: 3, collection: collection3)
      item4 = Item.create(name: 'random4', position: 4, collection: collection3)
      item5 = Item.create(name: 'random5', position: 5, collection: collection3)

  end
    
 
end
