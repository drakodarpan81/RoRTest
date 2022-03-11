# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  titles      :string
#  description :text
#  due_date    :datetime
#  prioriti    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Todo < ApplicationRecord
    # Validaciones
    validates :titles, presence: true
end
