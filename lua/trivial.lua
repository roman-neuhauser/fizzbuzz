#!/usr/bin/lua

-- i really want to like Lua, it's resisted so far;
-- i suspect it's just because i haven't seen enough
-- code written in it

for i = 1, 100, 1 do
  if math.fmod(i, 15) == 0 then
    print("FizzBuzz")
  elseif math.fmod(i, 3) == 0 then
    print("Fizz")
  elseif math.fmod(i, 5) == 0 then
    print("Buzz")
  else
    print(i)
  end
end
