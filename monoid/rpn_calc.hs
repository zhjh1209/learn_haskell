import Data.List

-- solveRPN :: String -> Double
-- solveRPN = head . foldl foldingFunction [] . words

-- foldingFunction :: [Double] -> String -> [Double]
-- foldingFunction (x:y:ys) "*" = (x*y):ys
-- foldingFunction (x:y:ys) "+" = (x+y):ys
-- foldingFunction (x:y:ys) "-" = (y-x):ys
-- foldingFunction xs numberString = read numberString:xs

-- foldingFunction :: [Double] -> String -> Maybe [Double]

readMaybe :: (Read a) => String -> Maybe a
readMaybe st = case reads st of [(x, "")] -> Just x
                                _ -> Nothing
