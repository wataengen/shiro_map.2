class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.references :subject, polymorphic: true
      t.references :member, foreign_key: true
      t.string :action_type, null: false, default: ""
      t.boolean :checked, default: false

      t.timestamps
    end
  end
end
