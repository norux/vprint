# vprint
Print any variable type in lua. Specially table type can be printed.

### example

```lua
vprint = require ("lib.vprint")

-- print table
table = {1, 2, 3, 4, {['a'] = 100, ['b'] = 101, {['c'] = 200, ['d'] = "300", {'a', 'b'}}}}
vprint(table)

-- print string
string = "test string"
vprint("string: ".. string)

-- print number
number = 123
vprint("number: " .. number)
```

### output
```
table: 0x7fab52408d80
{
   [1] = 1,
   [2] = 2,
   [3] = 3,
   [4] = 4,
   [5] = table: 0x7fab52409190
   {
      [1] = table: 0x7fab52408970
      {
         [1] = table: 0x7fab52408770
         {
            [1] = "a",
            [2] = "b"
         },
         [c] = 200,
         [d] = "300"
      },
      [a] = 100,
      [b] = 101
   }
}

string: test string
number: 123
```