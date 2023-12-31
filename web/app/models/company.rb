# == Schema Information
#
# Table name: companies
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Company < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :links, dependent: :destroy
  has_many :company_messages, dependent: :destroy
end
