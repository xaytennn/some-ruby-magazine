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
            (1, 1, 'x-1.png'),
            (2, 2, 'x-2.png'),
            (3, 3, 'x-3.png'),
            (4, 4, 'x-4.png'),
            (5, 5, 'h-1.png'),
            (6, 6, 'h-2.png'),
            (7, 7, 'h-3.png'),
            (8, 8, 'h-4.png'),
            (9, 9, 'a-1.png'),
            (10, 10, 'a-2.png'),
            (11, 11, 'a-3.png'),
            (12, 12, 'a-4.png'),
            (13, 13, 't-1.png'),
            (14, 14, 't-2.png'),
            (15, 15, 't-3.png')
    SQL
  end
end
