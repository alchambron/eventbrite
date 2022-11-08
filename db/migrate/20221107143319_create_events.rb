class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.datetime :start_date
      t.integer :duration
      t.string :title
      t.text :description
      t.integer :price
      t.string :location

      t.belongs_to :user, index: true # Create Link to know who is admin

      t.timestamps
    end
  end
end