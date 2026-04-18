# 🚀 The Odin Project – Full Stack Ruby on Rails
![Progress](https://img.shields.io/badge/Progress-8,7%25-orange)
![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![Focus](https://img.shields.io/badge/Focus-Full%20Stack%20Ruby%20on%20Rails-red)

---

## Introduction

> This comprehensive curriculum focuses on mastering the Ruby ecosystem from the ground up, transitioning from foundational logic to advanced architectural patterns.
>
> * Data Structures & Logic: Deep dive into Ruby’s unique handling of strings, symbols, and variables, alongside mastery of conditional flow (unless, ternary) and loop patterns.
>
> * Advanced Collections: Expert manipulation of Arrays and Hashes, including safe navigation with #dig and avoiding common pitfalls like shared object references in nested collections.
>
> * The Power of Enumerables: Harnessing Ruby’s most powerful feature—the Enumerable module—using methods like #map, #select, and #reduce to write clean, idiomatic, and efficient code.
>
> * Clean Code & Debugging: Implementing the DRY (Don't Repeat Yourself) principle through modular methods and utilizing professional debugging tools like pry-byebug for stack trace analysis and execution control.

---

<details>

<summary> 💎 Basic Ruby *(In Progress)* </summary>

<details>
<summary> Basic Data Types </summary>

* Strings
* Integers
* Floats
* Booleans
* Understanding how Ruby handles different types of data
* Type conversion and common methods per type
* Differences between Ruby and other languages in type handling
</details>

<details>
<summary> Variables </summary>
  
* Declaring and assigning variables in Ruby
* Variable naming conventions (snake_case)
* Local, global, instance and class variable types
* Understanding variable scope and best practices
</details>

<details>
<summary> Input and Output </summary>
  
* `gets`
* `gets.chomp`
* `puts`
* `print`
* `p`
* Understanding the difference between return value and output
* String interpolation and formatting
</details>

<details>
<summary> Conditional Logic </summary>
  
* `if`
* `elsif`
* `else`
* `unless`
* Ternary operator and one-line conditionals
* `case/when` as a cleaner alternative to long if-chains
* Truthy and falsy values in Ruby (`nil` and `false` only)
</details>

<details>
<summary> Loops </summary>
  
* `loop`, `while`, `until`, `for`, and `times`
* `break`, `next`, and loop control
* Understanding when to use each loop type
* Ruby's preference for iterators over traditional loops
</details>

<details>
<summary> Arrays </summary>
  
* Creating, accessing, and modifying arrays
* Common methods: `push`, `pop`, `shift`, `unshift`, `flatten`, `shuffle`
* Iterating with `each`, `map`, `select`, and `reject`
* Multi-dimensional arrays and practical use cases
</details>

<details>
<summary> Hashes </summary>

* Understanding what a hash is (key-value data structure)
* Differences between arrays (indexed) and hashes (key-based, unordered)
* Creating hashes using `{}` and `Hash.new`
* Using keys and values (strings, symbols, numbers, arrays, even nested hashes)
* Accessing values with `hash[key]` and `fetch`
* Adding and updating data with assignment (`hash[key] = value`)
* Removing data with `delete`
* Useful methods: `keys`, `values`
* Merging hashes with `merge` (and how conflicts are handled)
* Using symbols as keys for better performance and cleaner syntax

</details>

<details>
<summary> Methods </summary>
  
* Defining methods with `def` and calling them by name
* Using parameters and arguments to make methods dynamic
* Setting default parameter values
* Understanding implicit vs explicit return (`return`)
* Difference between `puts` (output) and return values (data flow)
* Method chaining (e.g., `reverse.join.capitalize`)
* Predicate methods (`?`) that return boolean values
* Bang methods (`!`) that modify the original object
* Naming conventions (snake_case, avoid reserved words)
* DRY principle: reuse code instead of repeating it

</details>

<details>
<summary> Debugging </summary>
  
* Reading the stack trace to find errors (focus on the first line)
* Using `puts` and `p` to inspect values (`p` is more reliable)
* Testing assumptions about variables and outputs
* Using `binding.pry` to pause and inspect execution
* Stepping through code (`next`) with `pry-byebug`
* Debugging crashes vs incorrect behavior

</details>

<details>
<summary> Enumerable Methods </summary>
  
* Iterate collections (arrays & hashes)
* #each → loop, returns original collection
* #each_with_index → loop with index
* #map → transform, returns new array
* #select → filter, returns matching elements
* #reduce → combine into single value
* { } vs do...end → single vs multi-line blocks
* Bang methods (!) → mutate original object (avoid when possible)

</details>

<details>
<summary> Predicate Enumerable Methods </summary>
  
* Predicate methods → end with ? and return true/false
* #include? → checks if element exists in collection
* #any? → true if at least one element matches condition
* #all? → true if all elements match condition
* #none? → true if no elements match condition
* #one? → true if exactly one element matches condition
* Short-circuiting → stops early when result is determined
* Empty collections → #all? returns true by default

</details>

<details>
<summary> Nested Collections </summary>
  
* Nested array/hash → collections inside collections

* Access → `array[x][y]` | `hash[:key][:nested_key]`
* Safe access → `#dig` avoids errors (returns nil)

* Array.new  → shared reference with mutable objects
* Fix → `Array.new(n) { ... }`

* Add/remove → `<<`, `push`, `pop`, `delete`

* Iterate → nested `each`
* Flatten → `#flatten` for simpler loops

* Combine → `any?` + `all?`

</details>

</details>

---


<details>
 <summary> 💻 Projects </summary>

 * 🌐 [Under Development](https://felippemenezes.github.io/underdevelopment/) &nbsp;&nbsp;&nbsp;[Repository](https://github.com/FelippeMenezes/underdevelopment)
 * 🌐 [Under Development](https://felippemenezes.github.io/underdevelopment/) &nbsp;&nbsp;&nbsp;[Repository](https://github.com/FelippeMenezes/underdevelopment)

</details>

---

![Ruby](https://img.shields.io/badge/-Ruby-CC342D?logo=ruby&logoColor=white&style=flat)
![HTML](https://img.shields.io/badge/-HTML5-E34F26?logo=html5&logoColor=white&style=flat)
![CSS](https://img.shields.io/badge/-CSS3-1572B6?logo=css3&logoColor=white&style=flat)
![Rails](https://img.shields.io/badge/-Ruby%20on%20Rails-CC0000?logo=rubyonrails&logoColor=white&style=flat)
![SQL](https://img.shields.io/badge/-SQL-003B57?style=flat&logo=database&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/-PostgreSQL-336791?logo=postgresql&logoColor=white&style=flat)
![JavaScript](https://img.shields.io/badge/-JavaScript-F7DF1E?logo=javascript&logoColor=black&style=flat)
![Node.js](https://img.shields.io/badge/-Node.js-339933?logo=node.js&logoColor=white&style=flat)
![React](https://img.shields.io/badge/-React-61DAFB?logo=react&logoColor=black&style=flat)
