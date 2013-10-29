class AddPresentationToTalk < ActiveRecord::Migration
  def change
    add_column :talks, :presentation, :string
  end
end
