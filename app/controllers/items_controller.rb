class ItemsController < ApplicationController
  def index
    @item_options = Item.find_by_sql("SELECT i.id, p.name AS name, o.name AS option_name
      FROM items AS i
        INNER JOIN products AS p ON i.product_id = p.id
        INNER JOIN item_options AS io ON i.id = io.item_id
        INNER JOIN options AS o ON io.option_id = o.id
      WHERE user_id = #{current_user.id}
      ORDER BY i.id;")
  end

  def new
    @items = []
    Product.all.each do |product|
      item = Item.new(product: product)
      # Find first separate wood, cushion, and covering for this product
      product_option_types = product.options.map(&:class).uniq
      product_option_types.each do |product_option_type|
        options = product.options.select {|option| option.class == product_option_type}
        item.item_options.build(option_type: product_option_type, options: options)
      end
      @items << item
    end
  end

  def create
    Item.create(item_params)
    redirect_to new_item_path
  end

  private

  def item_params
    params.require(:item).permit(:product_id,
      item_options_attributes: [:option_id]
    ).merge(:user_id => current_user.id)
  end
end
