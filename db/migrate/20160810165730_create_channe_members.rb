class CreateChanneMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :channe_members do |t|
      t.references :channel, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
