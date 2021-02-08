class Register < ApplicationRecord

  belongs_to :parent, class_name: 'Register', optional: true
  has_many :sub_register, class_name: 'Register', foreign_key: :parent_id, dependent: :destroy

  enum type_plan: [:titular, :dependente]
  enum status: [:ativo, :desativado]

  validates :type_plan, inclusion: { in: Register.type_plans }
  validates :status, inclusion: { in: Register.statuses }

end
