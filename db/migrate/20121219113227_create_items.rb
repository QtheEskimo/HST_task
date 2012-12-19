class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :email
      t.integer :position
      t.integer :collection_id

      t.timestamps
    end
  end
end
