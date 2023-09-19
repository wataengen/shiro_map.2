class CreateMyMaps < ActiveRecord::Migration[6.1]
  def change
    create_table :my_maps do |t|
      t.integer :member_id,   null: false
      t.integer :shiro_id,    null: false
      t.string  :comment,     null: false, defult: ""

      t.timestamps
    end
  end
end
