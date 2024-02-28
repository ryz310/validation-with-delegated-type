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
end
