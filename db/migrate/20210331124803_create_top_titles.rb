class CreateTopTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :top_titles do |t|
      t.string :title
      t.integer :streaming_service_id
      t.integer :user_id

      t.timestamps
    end
  end
end
