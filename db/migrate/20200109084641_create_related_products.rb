class CreateRelatedProducts < ActiveRecord::Migration[6.0]
  def change
    #drop_table :related_products
    #unless ActiveRecord::Base.connection.tables.include?("related_products")
      create_table :related_products, id: false do |t|
        t.integer :product_id
        t.integer :related_id
      end

      insert <<-SQL.squish
            INSERT INTO related_products
            (product_id , related_id)
            VALUES
            (1, 9),(1, 8),(1, 7),
            (2, 6),(2, 12),(2, 14),
            (3, 3),(3, 16),(3, 11),
            (4, 1),(4, 2),(4, 3),
            (5, 4),(5, 12),(5, 2),
            (6, 20),(6, 23),(6, 2),
            (7, 4),(7, 1),(7, 2),
            (8, 4),(8, 1),(8, 2),
            (9, 4),(9, 1),(9, 2),
            (10, 11),(10, 9),(10, 15),
            (11, 12),(11, 8),(11, 14),
            (12, 13),(12, 7),(12, 13),
            (13, 14),(13, 6),(13, 12),
            (14, 15),(14, 2),(14, 11),
            (15, 21),(15, 5),(15, 16),
            (16, 20),(16, 10),(16, 17),
            (17, 19),(17, 11),(17, 18),
            (18, 20),(18, 12),(18, 19),
            (19, 18),(19, 13),(19, 20),
            (20, 17),(20, 14),(20, 21),
            (21, 16),(21, 15),(21, 22),
            (22, 15),(22, 19),(22, 23),
            (23, 2),(23, 18),(23, 24),
            (24, 6),(24, 17),(24, 25),
            (25, 7),(25, 16),(25, 26),
            (26, 1),(26, 15),(26, 27),
            (27, 8),(27, 2),(27, 1),
            (28, 23),(28, 22),(28, 2)
      SQL
    end
  end
#end

