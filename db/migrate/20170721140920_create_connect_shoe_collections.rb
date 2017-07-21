class CreateConnectShoeCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :connect_shoe_collections do |t|
      t.references :shoe, foreign_key: true
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
