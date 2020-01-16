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
            (15, 15, 't-3.png'),
            (16, 16, 'z-1.png'),
            (17, 17, 'z-2.png'),
            (18, 18, 'z-3.png'),
            (19, 19, 'b-1.png'),
            (20, 20, 'b-2.png'),
            (21, 21, 'm-1.png'),
            (22, 22, 'm-2.png'),
            (23, 23, 'm-3.png'),
            (24, 24, 'y-1.png'),
            (25, 25, 'y-2.png'),
            (26, 26, 'hi-1.png'),
            (27, 27, 'hi-2.png'),
            (28, 28, 'hi-3.png')
    SQL
  end
end
