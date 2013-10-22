class AddVotesCountToTalk < ActiveRecord::Migration
  def change
    add_column :talks, :votes_count, :int, default: 0
  end
end
