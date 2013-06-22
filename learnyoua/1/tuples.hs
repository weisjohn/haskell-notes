-- Tuples are used to store several heterogeneous elements as a single value.

tupone = (1,3)
tuphetero = (1,[1..3])

-- tuples are fixed size, so you have to know their contents beforehand

-- lists of tuples
nums = [(1,2), (3,4)]

-- tuples with different types are gven distinct classifications 
 --- by the type inferencer, which means you can't do:

 -- [(1,"string"), ("string",2)]


-- pairs

-- pairs are a special type of tuple in haskell

one = fst (1,2)
two = snd (1,2)

-- you can use zip to generate tuple pairs out of parallel arrays
indexedalphas = zip [1..26] ['a'..'z']

-- the zip function has pretty obvious behavior with the limit
justtwo = zip [1..2] [3..5]
-- [(1,3),(2,4)]


-- triangle inspection program

triples = [ (a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10] ]

rightTriangles = [ (a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2 ]

rightTriangles' = [ (a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a+b+c == 24]


-- a common pattern in functional programming: 
  -- you start with a certain set of candidate solutions, 
  -- and succes- sively apply transformations and filters 
  -- to them until you’ve narrowed the possibilities down 
  -- to the one solution (or several solutions) that you’re after.