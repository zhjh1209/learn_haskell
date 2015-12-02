main = interact respondPalindromes

respondPalindromes contents = unlines (map (\xs ->
  if isPalindromes xs then "palindrome" else "not a palindrome") (lines contents))
  where isPalindromes xs = xs == reverse xs
