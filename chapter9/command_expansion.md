# Command expansions.

* If we enclose a string in back quotes or use the delimited form prefixed by %x, it will by default be executed as a command by the underlying operating system.

```ruby

`date`
`ls`.split[34]
%x{echo "hello there"}

```
