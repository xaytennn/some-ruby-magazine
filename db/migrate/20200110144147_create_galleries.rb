class CreateGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galleries do |t|
      t.integer :product_id
      t.string :img
    end

    insert <<-SQL.squish
            INSERT INTO galleries
            (id, product_id, img)
            VALUES
            (1, 1, 'p-2.png'),
            (2, 2, 'p-3.png'),
            (3, 3, 'p-4.png'),
            (4, 4, 'p-5.png'),
            (5, 5, 'p-6.png'),
            (6, 6, 'p-7.png'),
            (7, 7, 'p-8.png'),
            (8, 8, 'p-6.png'),
            (9, 9, 'p-5.png')
    SQL
  end
end
