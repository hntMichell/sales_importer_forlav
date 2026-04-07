require 'csv'
encoding: 'ISO-8859-1:UTF-8'

class FileImporter
  def self.import(file_path)
    total = 0

    CSV.foreach(file_path, col_sep: "\t", headers: true, encoding: 'ISO-8859-1:UTF-8') do |row|
      purchaser = Purchaser.find_or_create_by(name: row[0])

      merchant = Merchant.find_or_create_by(
        name: row[5],
        address: row[4]
      )

      item = Item.find_or_create_by(
        description: row[1],
        price: row[2].to_f
      )

      purchase = Purchase.create(
        purchaser: purchaser,
        item: item,
        merchant: merchant,
        count: row[3].to_i
      )

      total += item.price * purchase.count
    end

    total
  end
end