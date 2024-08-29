class AddTimestampsToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :created_at, :datetime
    add_column :tweets, :updated_at, :datetime


  end
end
