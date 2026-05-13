def contains?(hash, search_value)
  # Write a method that recursively searches for a value in a nested hash.
  # It should return `true` if the object contains that value.
  #
  # Examples:
  # contains?({ foo: { bar: "baz" } }, "baz") # true
  # contains?({ foo: { bar: "baz" } }, "egg") # false

  hash_values = hash.values
  return true if hash_values.include?(search_value)

  nested_hashes = hash_values.select { |value| value.is_a?(Hash) }
  nested_hashes.any? { |nested_hash| contains?(nested_hash, search_value) }
end
