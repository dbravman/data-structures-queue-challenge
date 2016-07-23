require_relative "linked_list"

class MyQueue < LinkedList
  def enqueue(element)
    insert_last(element)
  end

  def dequeue
    element = peel
    remove_first
    element
  end

  def peel
    return nil if empty?
    get(0)
  end

  def empty?
    size == 0
  end
end
