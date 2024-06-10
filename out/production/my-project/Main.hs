{-

https://www.spoj.com/problems/SMPDIV/

-}

divisibleByAButNotDivisibleByB :: Int -> Int -> Int -> [Int]
divisibleByAButNotDivisibleByB num a b = do
   let list = [1..num]
   filter (\x -> x `mod` a == 0 && x `mod` b /= 0 ) list

main :: IO ()
main = do
   let list = divisibleByAButNotDivisibleByB 30 2 3
   putStrLn $ "Divisible by 2 and not divisible by 3 " ++ show list