class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.references :user, index: true
      t.string :title
      t.datetime :scheduled_at

      t.timestamps
    end
  end
end
