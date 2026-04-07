ActiveRecord::Schema.define do
  create_table :purchasers do |t|
    t.string :name
  end

  create_table :merchants do |t|
    t.string :name
    t.string :address
  end

  create_table :items do |t|
    t.string :description
    t.decimal :price
  end

  create_table :purchases do |t|
    t.references :purchaser
    t.references :item
    t.references :merchant
    t.integer :count
  end
end