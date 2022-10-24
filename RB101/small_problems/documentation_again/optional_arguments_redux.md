Optional_arguments_redux.md
Doug Catharine
20221024
-----
Assume you have the following code:

```ruby
require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)
```

What will each of the 4 puts statements print?


####Answer
looking at [the ruby Doc's](https://docs.ruby-lang.org/en/2.7.0/Date.html#method-c-civil "Ruby Docs 2.7.0") we can see 

```ruby
civil([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date
new([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date
```
Creates a date object denoting the given calendar date.

In this class, BCE years are counted astronomically. Thus, the year before the year 1 is the year zero, and the year preceding the year zero is the year -1. The month and the day of month should be a negative or a positive number (as a relative month/day from the end of year/month when negative). They should not be zero.

The last argument should be a Julian day number which denotes the day of calendar reform. Date::ITALY (2299161=1582-10-15), Date::ENGLAND (2361222=1752-09-14), Date::GREGORIAN (the proleptic Gregorian calendar) and Date::JULIAN (the proleptic Julian calendar) can be specified as a day of calendar reform.
```ruby
Date.new(2001)            #=> #<Date: 2001-01-01 ...>
Date.new(2001,2,3)        #=> #<Date: 2001-02-03 ...>
Date.new(2001,2,-1)       #=> #<Date: 2001-02-28 ...>
```

Soo.... 

```ruby 
require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

```

The  `puts Date.civil` produces the first julian date, which we find to be `-4712-01-01` from irb.  `puts Date.civil(2016)` should produce the first day of 2016, a.k.a. `2016-01-01`, and we find this to be true in irb.  And so on
`puts Date.civil(2016, 5)` => `2016-05-01`
`puts Date.civil(2016, 5, 13)` => `2016-05-13`

Important : `::civil` returns `nil`

### Solution
```ruby
# puts Date.civil
-4712-01-01

# puts Date.civil(2016)
2016-01-01

# puts Date.civil(2016, 5)
2016-05-01

# puts Date.civil(2016, 5, 13)
2016-05-13
```

Discussion
The documentation for the Date class can be found in the Standard library API documentation. It's not the easiest documentation to use, but for this particular problem, it's easy to look up the civil method.

You can also use the new method instead of civil. However, if you try to read the documentation for new, you will probably walk away feeling unenlightened. Instead, use the civil method.

The documentation for Date::civil (note that it is a class method) shows that its signature is:
```ruby
civil([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date
```
This signature uses [] to show that all of the arguments are optional. This is only a documentation convention; the brackets should not be included in your program.

Note that the brackets are nested with this method; items inside the outermost bracket pairs can only be omitted if all of the innermost bracket pairs are omitted as well. Hence, if you omit the month argument, you must omit mday and start, but you must supply year. From this signature, then, we can see that arguments to civil can be supplied in 5 different ways:

```ruby
Date.civil                             # everything defaults
Date.civil(2016)                       # month, mday, start use defaults
Date.civil(2016, 5)                    # mday, start use defaults
Date.civil(2016, 5, 13)                # start uses default
Date.civil(1751, 5, 13, Date::ENGLAND) # nothing defaults
```
Starting from the left, year defaults to -4712 ([there's a good reason for that default](https://en.wikipedia.org/wiki/Julian_day)) if it is omitted. Likewise, month defaults to 1 (January), mday (the day of month) defaults to 1, and start defaults to Date::ITALY. We're not going to explain the start parameter right now, but you might need it if you ever need to work with Gregorian dates.