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
            (1, 1, 'a-1.png'),
            (2, 2, 'a-2.png'),
            (3, 3, 'a-3.png'),
            (4, 4, 'a-4.png'),
            (5, 5, 'h-1.png'),
            (6, 6, 'h-2.png'),
            (7, 7, 'h-3.png'),
            (8, 8, 'h-4.png')
    SQL
  end
end
