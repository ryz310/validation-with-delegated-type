# frozen_string_literal: true

# == Schema Information
#
# Table name: message_sending_configs
#
#  id                :integer          not null, primary key
#  configurable_type :string           not null
#  configurable_id   :integer          not null
#  enabled           :boolean          default(TRUE), not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_message_sending_configs_on_configurable  (configurable_type,configurable_id)
#
class MessageSendingConfig < ApplicationRecord
  delegated_type :configurable, dependent: :destroy, types: %w[
    BackInStockAlert
  ], inverse_of: :message_sending_config

  # configurable のバリデーションエラーを伝搬させるために必要
  accepts_nested_attributes_for :configurable

  before_validation lambda {
    puts '=' * 100
    puts 'before_validation at MessageSendingConfig'
    puts '=' * 100
  }
end
