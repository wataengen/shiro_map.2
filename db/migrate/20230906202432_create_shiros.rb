class CreateShiros < ActiveRecord::Migration[6.1]
  def change
    create_table :shiros do |t|
      t.string :name,            null: false
      t.text   :detail,          null: false
      t.string :shiro_map,       null: false
      t.boolean :display_status, null: false, defult: true

      t.timestamps
    end
  end
end
