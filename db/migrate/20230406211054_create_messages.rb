class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :body
      t.integer :listing_id
      t.integer :sender_id
      t.integer :recipient_id

      t.timestamps
    end
  end
end
