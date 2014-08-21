class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :text
      t.references :user, index: true

      t.timestamps
    end
  end
end
