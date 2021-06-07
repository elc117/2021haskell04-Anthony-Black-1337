-- Prática 04 de Haskell
-- Nome: Anthony Carlos Da Silva

--Q1

faixaIdoso :: Int -> String
faixaIdoso i
        | i >= 60 && i < 65 = "IDOSO_64"
            | i >= 65 && i < 70 = "IDOSO_69"
                | i >= 70 && i < 75 = "IDOSO_74"
                    | i >= 75 && i < 80 = "IDOSO_79"
                      | i >= 80 = "IDOSO_80"
                          | otherwise = "ND"
--Q2

classifIdosos :: [(String,Int)] -> [(String,Int,String)]
classifIdosos str = [(g,h,faixaIdoso h) | (g,h) <- str]

--Q3

--classifIdosos' ::[(String,Int)] -> [(String,Int,String)]
--classifIdosos' stk = map(\c -> c ++ faixaIdoso (snd c))stk 


--Q4

strColor :: (Int,Int,Int) -> String
strColor a =  "rgb"++show a

--Q5

genCircs :: Int -> (Int,Int) -> Int -> [(Int,Int,Int)]
genCircs a (l,ll) c = take a [(l,ll,c)| l <- [fst (l,ll),(fst(l,ll) + 2*c)..]]

--Q6

genReds :: Int -> [(Int,Int,Int)]
genReds x = [(80+i*10, 0, 0) | i <- [0..x-1] ]




