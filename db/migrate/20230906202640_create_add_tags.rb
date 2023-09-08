class CreateAddTags < ActiveRecord::Migration[6.1]
  def change
    create_table :add_tags do |t|
      t.references :post,  null: false, foreign_key: true
      t.references :tag,   null: false, foreign_key: true

      t.timestamps
    end
    
    add_index :add_tags, [:post_id, :tag_id], unique: true
  end
end
