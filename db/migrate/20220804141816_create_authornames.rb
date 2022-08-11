class CreateAuthornames < ActiveRecord::Migration[6.1]
  def change
    create_table :authornames do |t|
      t.string :author_name



      t.timestamps
    end
  end
end
