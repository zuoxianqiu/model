class CreateMicriposts < ActiveRecord::Migration
  def change
    create_table :micriposts do |t|
      t.string :contend
      t.integer :user_id

      t.timestamps
    end
  end
end
