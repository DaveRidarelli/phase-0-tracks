class TodoList
  attr_reader :todo_items

  def initialize(get_items)
    @todo_items = get_items
    return @todo_items
  end

  def get_items
    return @todo_items
  end

  def add_item(item)
    @todo_items.push(item)
    return @todo_items
  end

  def delete_item(item)
    @todo_items.delete(item)
  end

  def get_item(index)
    @todo_items.values_at(index).join
  end

end

