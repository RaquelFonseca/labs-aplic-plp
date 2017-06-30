
saida :: ([String], [String]) -> String
saida([],[]) = []
saida (a:as, b:bs) = a ++ " " ++ b ++ "\n" ++ saida(as, bs)  

  

main = do

 x <- getLine
 let l1 = (words x)
 
 y <- getLine
 let l2 = (words y)
 putStrLn (saida(l1, l2))
 
