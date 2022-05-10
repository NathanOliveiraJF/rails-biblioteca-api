class AddActorToObras < ActiveRecord::Migration[7.0]
  def change
    add_reference :obras, :actor, foreign_key: true
  end
end
