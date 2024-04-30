# == Schema Information
#
# Table name: payments
#
#  id          :bigint           not null, primary key
#  card_cvv    :string
#  card_expiry :string
#  card_name   :string
#  card_number :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Payment < ApplicationRecord
end
