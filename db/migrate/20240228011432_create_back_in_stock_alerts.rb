# frozen_string_literal: true

class CreateBackInStockAlerts < ActiveRecord::Migration[7.1]
  def change
    create_table :back_in_stock_alerts do |t|
      t.string :api_key, null: false, default: ''
      t.text :message_body

      t.timestamps
    end
  end
end
