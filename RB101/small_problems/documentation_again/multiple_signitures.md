##Multiple Signatures


What do each of these puts statements output?

```ruby
a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }
```
`puts a.fetch(7)` => error notes about index range {-5:5}
`a = %w(a b c d e)` => `['a', 'b', 'c', 'd', 'e']`
`puts a.fetch(7)` => `'beats me'`
`puts a.fetch(7) { |index| index**2 }`=> `49`