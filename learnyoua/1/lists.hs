
-- a list
lostNumbers = [4,8,15,16,23,42]

-- concatenation
woot = ['w','o'] ++ ['o','t']

-- cons operator
consOperator = 'a' : " smelly cat"

-- accessing list elements
accessor x = ("foobarqux" !! x)

myList = [5,4,3,2,1]
five = head myList
fourtheetwoone = tail myList
firefourthreetwo = init myList
one = last myList

anotherfive = length myList

onetwothreefourfive = reverse myList

-- check if a list is empty
true = null []


fivefourthree = take 3 myList

nine = maximum [1,2,9]


thirtyone = sum [5,2,1,6,3,2,5,7]
-- product

fourinmylist = 4 `elem` myList



-- list expansion
twenty = [1..20]
alphas = ['a'..'z']

-- beauty 
thirteens = [13,26..24*13]
-- infinite lists 
wow = take 24 [13,26..]


-- generators of inifite lists
numbers = take 10 (cycle [1,2,3])
fives = take 10 (repeat 5)
tens = replicate 3 10

-- list comprehensions
-- we draw 1 through 10, 
-- then the output (left hand side of the veritcal pipe) is doubled
twototwenty = [x*2 | x <- [1..10]]

-- list comprehensions can also be filtered
twelvetotwenty = [x*2 | x <- [1..10], x*2 >= 12]

-- branching in comprehensions
-- notice, the right side of the filter is done first before the output
beepBoop xs = [ if x < 10 then "beep" else "BOOP" | x <- xs, odd x]

-- mo' predicates, no mo problems
tentotwentynonprime = [ x | x <- [10..20], x /= 13, x /= 17, x /= 19]

-- just as multiple predicates, multiple draws
foonumbs = [x+y | x <- [1,2,3], y <- [10,100,1000]]

-- variable returns from the comprehension don't screw things up, though
quuxnums = [x+y | x <- [1,2], y <- [10,100,1e3]]

-- if we have two lists, [2,5,10] and [8,10,11], and we want to 
-- get the products of all possible combinations of numbers in 
-- those lists, we could use the following comprehension:
othernums = [ x*y | x <- [2,5,10], y <- [8,10,11]]

-- it kinda feels like predicates and comprehensions can be specified in any order?
filterafter = [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]

-- can be used on any type of list
nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
[adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

-- replacing built-ins
length' xs = sum [1 | _ <- xs]

-- the elem function
--- predicate heavy list comprehensions
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- incidentally, we have the elem function
true = elem 1 [0..2]


-- nested list comprehensions
xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
oddnums = [ [ x | x <- xs, odd x ] | xs <- xxs]

