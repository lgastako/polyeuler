--import System.TimeIt (timeIt)
--import Test.BenchPress (bench)
import ProjectEuler

-- TODO: Put in some timing stuff in the output.
-- bench 50 $ do putStr (show (length (take 500 primes)))
-- bench 50 $ do putStr (show (length (take 500 fast_primes)))


main = do
  putStrLn "Project Euler results (via Haskell):"
  putStrLn $ "#1: " ++ (show euler1)
  putStrLn $ "#2: " ++ (show euler2)
  putStrLn $ "#3: " ++ (show euler3)
  putStrLn $ "#4: " ++ (show euler4)
  putStrLn "#5: Too slow."
--  putStrLn $ "#5: " ++ (show euler5)
  putStrLn $ "#6: " ++ (show euler6)
  putStrLn "#7: Too slow."
--  putStrLn $ "#7: " ++ (show euler7)
  putStrLn $ "#8: " ++ (show euler8)
  putStrLn $ "#9: " ++ (show euler9)
--  putStrLn "#10: Not done yet (and too slow so far)."
--  putStrLn $ "#10: " ++ (show euler10)
  putStrLn $ "#11: " ++ (show euler11)
  putStrLn "#12: Too slow."
--  putStrLn $ "#12: " ++ (show euler12)
  putStrLn $ "#13: " ++ (show euler13)
  putStrLn "#14: Too slow."
--  putStrLn $ "#14: " ++ (show euler14)
--  putStrLn "#15: Not done yet."
  putStrLn $ "#16: " ++ (show euler16)
  putStrLn $ "#20: " ++ (show euler20)
  putStrLn "#21: Too slow."
--  putStrLn $ "#21: " ++ (show euler21)
  putStrLn $ "#25: " ++ (show euler25)
  putStrLn $ "#29: " ++ (show euler29)
  putStrLn $ "#30: " ++ (show euler30)
  putStrLn $ "#34: " ++ (show euler34)
  putStrLn "#35: Too slow."
--  putStrLn $ "#35: " ++ (show euler35)
  putStrLn $ "#36: " ++ (show euler36)
  putStrLn $ "#52: " ++ (show euler52)

