class Product < ApplicationRecord
  has_many :product_options
  has_many :options, through: :product_options

  def self.name_cost
    # We could get this kind of data back with: Product.all.pluck(:id, :name, :cost)
    # But pluck always brings back an array, and this will bring back real
    # product objects.
    # (Omits created_at and updated_at, saving a little network traffic)
    self.find_by_sql("SELECT id, name, cost FROM products;")
  end

  def self.full_list(my_sort = self::PRODUCT_OPTION)
    result = self.find_by_sql("SELECT p.id, p.name, o.name AS option, pos.cost+p.cost AS cost
     FROM products as p
      INNER JOIN product_options AS pos ON p.id=pos.product_id
      INNER JOIN options AS o ON o.id=pos.option_id;")

    result.sort &my_sort
  end

  # Custom sort, first by product name, second by option
  # This is in lieu of doing ORDER BY p.name, o.name (to speed up the query)
  PRODUCT_OPTION = Proc.new do |a, b|
    primary = a.name <=> b.name
    if primary == 0
      a.option <=> b.option
    else
      primary
    end
  end
  # Sort by product, then by cost
  PRODUCT_COST = Proc.new do |a, b|
    primary = a.name <=> b.name
    if primary == 0
      a.cost <=> b.cost
    else
      primary
    end
  end

end
