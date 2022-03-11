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
require "test_helper"

class TodoTest < ActiveSupport::TestCase
  test "Title should not be empty" do
    todo = Todo.new
    todo.save
    #puts todo.errors.full_messages
    #assert_not todo.persisted?
    assert todo.errors.any?, "No se encontraron errores"
  end
end
