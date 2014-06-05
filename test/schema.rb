ActiveRecord::Migration.verbose = false

ActiveRecord::Schema.define do
  
  create_table :cars, :force => true do |t|
    t.references :make
    t.string  :model
    t.integer :minimum_driver_level
    t.decimal :price, :precision => 14, :scale => 2
    t.decimal :speed, :precision => 14, :scale => 2
  end
  
  create_table :makes, :force => true do |t|
    t.string  :name
  end
  
end
