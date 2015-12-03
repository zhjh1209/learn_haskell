import System.Random

-- main = do
--   gen <- getStdGen
--   putStrLn $ take 20 (randomRs ('a', 'z') gen)
--   gen2 <- getStdGen
--   putStrLn $ take 20 (randomRs ('a', 'z') gen2) -- 两次会打印出同样的字符串

-- main = do
--   gen <- getStdGen
--   let randomChars = randomRs ('a', 'z') gen
--       (first20, rest) = splitAt 20 randomChars
--       (second20, _) = splitAt 20 rest
--   putStrLn first20
--   putStrLn second20

main = do
  gen <- getStdGen
  putStrLn $ take 20 (randomRs ('a', 'z') gen)
  gen' <- newStdGen -- 他会把现有的random generator分成两个新的generators，然后
                    -- 会把其中一个指定成global generator，并回传另一个。
  putStrLn $ take 20 (randomRs ('a', 'z') gen')
