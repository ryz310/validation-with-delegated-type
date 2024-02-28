# frozen_string_literal: true

# == Schema Information
#
# Table name: back_in_stock_alerts
#
#  id           :integer          not null, primary key
#  api_key      :string           default(""), not null
#  message_body :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class BackInStockAlert < ApplicationRecord
  has_one :message_sending_config, as: :configurable, dependent: :destroy, touch: true

  # message_sending_config が有効な場合のみ api_key を必須にしたい
  validates :api_key, presence: true, if: lambda {
    puts '=' * 100
    puts 'validates :api_key, presence: true'
    puts "message_sending_config : #{message_sending_config.inspect}"
    puts '=' * 100
    message_sending_config&.enabled?
  }

  before_validation lambda {
    puts '=' * 100
    puts 'before_validation at BackInStockAlert'
    puts '=' * 100
  }
end
