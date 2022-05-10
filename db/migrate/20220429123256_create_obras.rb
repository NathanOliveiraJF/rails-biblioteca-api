class CreateObras < ActiveRecord::Migration[7.0]
  def change
    create_table :obras do |t|
      t.string :titulo, null: false
      t.string :editora
      t.string :foto

      t.timestamps
    end
  end
end
