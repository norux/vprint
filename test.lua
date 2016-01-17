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