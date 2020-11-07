class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :name
      t.float :watts
      t.boolean :active
      t.datetime :restarted_at

      t.timestamps
    end
  end
end
