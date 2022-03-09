require "test_helper"

class TodoTest < ActiveSupport::TestCase
  test "Title should not be empty" do
    todo = Todo.new
    todo.save
    #assert_not todo.persisted?
    assert todo.errors.any?, "No se encontraron errores"
  end
end
