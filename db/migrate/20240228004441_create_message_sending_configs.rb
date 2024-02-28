# frozen_string_literal: true

class CreateMessageSendingConfigs < ActiveRecord::Migration[7.1]
  def change
    create_table :message_sending_configs do |t|
      t.references :configurable, null: false, polymorphic: true
      t.boolean :enabled, null: false, default: true

      t.timestamps
    end
  end
end
