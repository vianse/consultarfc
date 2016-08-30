class CreateSesiones < ActiveRecord::Migration
  def change
    create_table :sesiones do |t|
      t.string :id_user
      t.string :name
      t.string :user_id

      t.timestamps null: false
    end
  end
end
