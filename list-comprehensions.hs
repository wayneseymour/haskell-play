
-- Only give me the elements that after being doubled, the doubled value is greater or equal to 12
--[x*2 | x <- [1..10], x*2 >= 12]

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- Only show elements that are not 13, 15, or 19
not131519 = [ x | x <- [10..20], x /= 13, x /=15, x /= 19] -- Preloaded with a list
not131519' xs = [ x | x <- xs, x /= 13, x /=15, x /= 19] -- Takes a list arg

nouns = ["hobo", "frog", "pope"]
adjectives = ["lazy", "grouchy", "scheming"]

-- Concat adj " " noun, derived from two lists
zipWords = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns] -- Preloaded
zipWords' xs ys = [adjective ++ " " ++ noun | adjective <- xs, noun <- ys] -- Takes a list arg

-- Replace every element in a list with the number 1,
-- then add them all up with `sum`
length' xs = sum [1 | _ <- xs ]

removeNonUppercase strXs = [ x | x <- strXs, x `elem` ['A'..'Z']]

xSS = [[1..9], [1..9], [1..9]]
removeAllOddsNotFlattenned = [ [ x | x <- xs, even x ] | xs <- xSS ]
removeAllOddsNotFlattenned' xSs =
  [
    [ x | x <- xs, even x ]
    | xs <- xSs
  ]

--removeAllOddsNotFlattenned' [[1..3], [1..6], [1..9]]
