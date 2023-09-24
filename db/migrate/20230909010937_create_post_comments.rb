class CreatePostComments < ActiveRecord::Migration[6.1]
  def change
    create_table :post_comments do |t|
      t.text      :comment,        null: false
      t.integer   :member_id,      null: false
      t.integer   :post_id,        null: false
      t.boolean   :display_status, null: false, default: true

      t.timestamps
    end
  end
end
