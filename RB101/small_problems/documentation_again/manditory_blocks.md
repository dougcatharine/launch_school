##Mandatory Blocks

The `Array#bsearch` method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code:

```ruby
a = [1, 4, 8, 11, 15, 19]
```

How would you search this Array to find the first element whose value exceeds 8?

```ruby
a.bsearch {|x| x > 8 } # => 11
```

Docs can be found [here](https://docs.ruby-lang.org/en/3.1/bsearch_rdoc.html)