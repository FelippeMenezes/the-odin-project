# frozen_string_literal: true

tree = {
  name: 'John',
  children: [
    {
      name: 'Jim',
      children: []
    },
    {
      name: 'Zoe',
      children: [
        { name: 'Kyle', children: [] },
        { name: 'Sophia', children: [] }
      ]
    }
  ]
}

def print_children_recursive(tree)
  return if tree[:children].empty?

  tree[:children].each do |child|
    puts child[:name]
    print_children_recursive(child)
  end
end

print_children_recursive(tree)

def print_children_iterative(tree)
  stack = tree[:children]

  until stack.empty?
    current = stack.pop
    puts current[:name]

    stack.concat(current[:children].reverse)
  end
end

print_children_iterative(tree)
