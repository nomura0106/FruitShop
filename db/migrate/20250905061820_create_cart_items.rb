class CreateCartItems < ActiveRecord::Migration[8.0]
  def change
    create_table :cart_items do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      rails g model Cart user:references
      rails g model CartItem cart:references product:references quantity:integer

      t.timestamps
    end
  end
end
