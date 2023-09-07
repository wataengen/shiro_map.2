class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer  :member_id,      null: false
      t.integer  :add_tag,        null: false, default: ""
      t.text     :post_text,      null: false
      t.boolean  :display_status, null: false, default: false

      t.timestamps
    end
  end
end
