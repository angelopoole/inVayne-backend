class CreateChampions < ActiveRecord::Migration[6.0]
  def change
    create_table :champions do |t|
      t.string :name
      t.integer :key
      t.string :title
      t.string :blurb
      t.string :info
      t.string :image
      t.string :tags, array: true, default: []
      t.string :partype
      t.string :stats

      t.timestamps
    end
  end
end
