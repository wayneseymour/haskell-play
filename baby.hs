doubleMe x = x + x
doubleUs a b = a * 2 + b *2
doubleSmallNumber x = if x > 100 then x else x*2
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1
conanO'Brien = "It's a-me, Conan O'Brien!"

-- Only give me the elements that after being doubled, the doubled value is greater or equal to 12
--[x*2 | x <- [1..10], x*2 >= 12]

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- Only show elements that are not 13, 15, or 19
not131519 = [ x | x <- [10..20], x /= 13, x /=15, x /= 19]
not131519' xs = [ x | x <- xs, x /= 13, x /=15, x /= 19]

