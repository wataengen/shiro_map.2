class CreateAddTags < ActiveRecord::Migration[6.1]
  def change
    create_table :add_tags do |t|
      t.integer :post_id,  null: false
      t.integer :tag_id,   null: false

      t.timestamps
    end
  end
end
