# Using splats to build up and tear apart arrays in Ruby

## Splats in methods arguments

You've probably used splats for "catch-all" arguments. And that's all that most people use them for.

```ruby
def go(x, *args)
  puts args.inspect
end

go("a", "b", "c") #=> ["b","c"]
```

If you are using the newfangled keyword argument syntax, use a double splat like so:

```ruby
def go(**params)
  puts params.inspect
end

go(x: 100, y: 200) #=> {x => 100, y => 200}
```

## Splats in the calling of the method

```ruby
def go(x, y)
end

point = [12, 10]
go(*point) #=> go(12,10)


def go(x:, y:)
end

point = { x: 100, y: 200 }
go(**point) #=> go(100,200)
```
