class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.float :monthly_price
      t.integer :user_id
      t.integer :streaming_service_id
      
      t.timestamps
    end
  end
end
