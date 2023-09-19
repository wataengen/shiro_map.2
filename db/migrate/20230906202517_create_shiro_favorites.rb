class CreateShiroFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :shiro_favorites do |t|
      t.integer  :member_id,   null: false
      t.integer  :shiro_id,    null: false

      t.timestamps
    end
  end
end
