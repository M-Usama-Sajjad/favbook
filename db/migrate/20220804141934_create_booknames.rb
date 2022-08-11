class CreateBooknames < ActiveRecord::Migration[6.1]
  def change
    create_table :booknames do |t|
      t.string :book_name
      t.references :authorname, index: true
      t.timestamps
    end
  end
end
