class CreateLibros < ActiveRecord::Migration[5.2]
  def change
    create_table :libros do |t|
      t.string :title
      t.string :author
      t.integer :price

      t.timestamps
    end
  end
end
