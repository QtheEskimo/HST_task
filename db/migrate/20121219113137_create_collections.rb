class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.date :date
      t.integer :position

      t.timestamps
    end
  end
end
