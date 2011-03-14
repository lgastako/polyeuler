--import System.TimeIt (timeIt)
--import Test.BenchPress (bench)
import ProjectEuler
import System( getArgs )
-- TODO: Put in some timing stuff in the output.
-- bench 50 $ do putStr (show (length (take 500 primes)))
-- bench 50 $ do putStr (show (length (take 500 fast_primes)))

solutions :: [Maybe Integer]
solutions = [Just euler1,
             Just euler2,
             Just euler3,
             Just euler4,
             Nothing, -- 5
             Just euler6,
             Nothing,  -- 7
             Just euler8,
             Just euler9,
             Just euler10,
             Just euler11,
             Nothing,  -- 12
             Just euler13,
             Nothing,  -- 14
             Nothing,  -- 15
             Just euler16,
             Nothing,  -- 17
             Nothing,  -- 18
             Nothing,  -- 19
             Just euler20,
             Nothing,  -- 21
             Nothing,  -- 22
             Nothing,  -- 23
             Nothing,  -- 24
             Just euler25,
             Nothing,  -- 26
             Nothing,  -- 27
             Nothing,  -- 28
             Just euler29,
             Just euler30,
             Nothing,  -- 31
             Nothing,  -- 32
             Nothing,  -- 33
             Just euler34,
             Nothing,  -- 35
             Just euler36,
             Nothing,  -- 37
             Nothing,  -- 38
             Nothing,  -- 39
             Nothing,  -- 40
             Nothing,  -- 41
             Nothing,  -- 42
             Nothing,  -- 43
             Nothing,  -- 44
             Nothing,  -- 45
             Nothing,  -- 46
             Nothing,  -- 47
             Nothing,  -- 48
             Nothing,  -- 49
             Nothing,  -- 50
             Nothing,  -- 51
             Just euler52]


display :: Int -> Maybe Integer -> String
display idx (Just n) = "#" ++ (show idx) ++ ": " ++ (show n)
display idx Nothing = "#" ++ (show idx) ++ ": N/A"


displayAtN :: Int -> String
displayAtN n = display n (solutions !! n)

displayNs :: [Int] -> String
displayNs = unlines . (map displayAtN)


doMain :: [String] -> IO()
doMain args = putStrLn $ if 0 >= (length args)
                         then displayNs [1..(length solutions)]
                         else displayNs (map read args)


main = do
    args <- getArgs
    doMain args
