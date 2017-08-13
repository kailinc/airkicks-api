class CreateConnects < ActiveRecord::Migration[5.0]
  def change
    create_table :connects do |t|
      t.references :user, foreign_key: true
      t.references :shoe, foreign_key: true
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
