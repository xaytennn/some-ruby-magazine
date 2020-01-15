# frozen_string_literal: true

require 'faker'


# table brands
brand_attributes = [{
                        title: 'Xiaomi', bytitle: 'xiaomi',
                        img: 'abt-1.jpg', description: 'China' #Faker::Superhero.name
                    },
                    {
                        title: 'Huawei', bytitle: 'huawei',
                        img: 'abt-3.jpg', description: 'China' #Faker::Superhero.name
                    },
                    {
                        title: 'Apple', bytitle: 'apple',
                        img: 'abt-2.jpg', description: 'USA' #Faker::Superhero.name
                    },
                    {
                        title: 'TeXet', bytitle: 'texet',
                        img: '', description: 'Russia' #Faker::Superhero.name
                    }]

brand_attributes.each do |attr|
  Brand.create(attr) unless Brand.where(attr).first
end

# - - - - -

# table categories
china = Category.create(title: 'China', bytitle: 'china', keywords: 'china', description: 'from China')
xiaomi = Category.create(title: 'Xiaomi', bytitle: 'xiaomi', keywords: 'xiaomi', description: 'xiaomi', parent: china)
huawei = Category.create(title: 'Huawei', bytitle: 'huawei', keywords: 'huawei', description: 'huawei', parent: china)

usa = Category.create(title: 'USA', bytitle: 'usa', keywords: 'usa', description: 'from USA')
apple = Category.create(title: 'Apple', bytitle: 'apple', keywords: 'apple', description: 'apple', parent: usa)

russia = Category.create(title: 'Russia', bytitle: 'russia', keywords: 'russia', description: 'from Russia')
teXet = Category.create(title: 'TeXet', bytitle: 'teXet', keywords: 'teXet', description: 'teXet', parent: russia)

# - - - - - - - -

# table products
product_attributes = [
  {
      category_id: '2',
      brand_id: '1',
      title: 'Xiaomi Mi 9',
      bytitle: 'xiaomi-mi-9',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 243,
      old_price: 487,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'x-1.png',
      hit: 1
  },
  {
      category_id: '2',
      brand_id: '1',
      title: 'Xiaomi Mi 9T',
      bytitle: 'xiaomi-mi-9t',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 203,
      old_price: 407,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'x-2.png',
      hit: 1
  },
  {
      category_id: '2',
      brand_id: '1',
      title: 'Xiaomi Mi 9 Lite',
      bytitle: 'xiaomi-mi-9-lite',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 122,
      old_price: 244,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'x-3.png',
      hit: 1
  },
  {
      category_id: '2',
      brand_id: '1',
      title: 'Xiaomi Mi 9SE',
      bytitle: 'xiaomi-mi-9SE',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 203,
      old_price: 407,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'x-4.png',
      hit: 1
  },
  {
      category_id: '3',
      brand_id: '2',
      title: 'Huawei P Smart Z',
      bytitle: 'huawei-p-smart-z',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 105,
      old_price: 211,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'h-1.png',
      hit: 1
  },
  {
      category_id: '3',
      brand_id: '2',
      title: 'Huawei P30 Pro',
      bytitle: 'huawei-p30-pro',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 407,
      old_price: 814,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'h-2.png',
      hit: 1
  },
  {
      category_id: '3',
      brand_id: '2',
      title: 'Huawei Nova 5z',
      bytitle: 'huawei-nova-5z',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 227,
      old_price: 455,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'h-3.png',
      hit: 1
  },
  {
      category_id: '3',
      brand_id: '2',
      title: 'Huawei Y9 Prime',
      bytitle: 'huawei-y9-prime',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 97,
      old_price: 195,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'h-4.png',
      hit: 1
  },
  {
      category_id: '5',
      brand_id: '3',
      title: 'iPhone Xr',
      bytitle: 'iphone-xr',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 341,
      old_price: 683,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'a-1.png',
      hit: 1
  },
  {
      category_id: '5',
      brand_id: '3',
      title: 'iPhone X',
      bytitle: 'iphone-x',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 407,
      old_price: 814,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'a-2.png',
      hit: 1
  },
  {
      category_id: '5',
      brand_id: '3',
      title: 'iPhone 11',
      bytitle: 'iphone-11',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 488,
      old_price: 977,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'a-3.png',
      hit: 1
  },
  {
      category_id: '5',
      brand_id: '3',
      title: 'iPhone 8',
      bytitle: 'iphone-8',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 203,
      old_price: 407,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 'a-4.png',
      hit: 1
  },
  {
      category_id: '7',
      brand_id: '4',
      title: 'TeXet ТМ-5583',
      bytitle: 'texet-tm-5583',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 41,
      old_price: 82,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 't-1.png',
      hit: 1
  },
  {
      category_id: '7',
      brand_id: '4',
      title: 'TeXet TM-5003',
      bytitle: 'texet-tm-5003',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 24,
      old_price: 49,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 't-2.png',
      hit: 1
  },
  {
      category_id: '7',
      brand_id: '4',
      title: 'TeXet TM-5583',
      bytitle: 'texet-tm-5583',
      content: Faker::Lorem.sentence(word_count: 20),
      price: 36,
      old_price: 73,
      status: 1,
      keywords: 'keywords',
      description: Faker::Lorem.sentence(word_count: 10),
      img: 't-3.png',
      hit: 1
  }
]

product_attributes.each do |attr|
  Product.create(attr) unless Product.where(attr).first
end
