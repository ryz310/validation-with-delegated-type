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
require 'rails_helper'

RSpec.describe BackInStockAlert, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
