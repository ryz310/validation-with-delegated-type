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
require 'rails_helper'

RSpec.describe MessageSendingConfig, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
