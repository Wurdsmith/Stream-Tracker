class CreateStreamingServices < ActiveRecord::Migration[6.1]
  def change
    create_table :streaming_services do |t|
      t.string :name
      t.string :monthly_price
      t.string :original_titles
      t.string :image_link
      
      t.timestamps
    end
  end
end
