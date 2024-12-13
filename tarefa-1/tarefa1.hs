toDigits :: Integer -> [Integer]
toDigits x
    | x <= 0 = []
    | otherwise = toDigits(x `div`10) ++ [x `mod` 10]

toDigitsRev :: Integer -> [Integer]
toDigitsRev x
    | x <= 0 = []
    | otherwise = (x `mod` 10) : toDigitsRev(x `div`10)

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [x] = [x]
doubleEveryOther (x: (y: zs)) = x: (2*y) : doubleEveryOther zs

--Função auxiliar
integerDigitSum :: Integer -> Integer
integerDigitSum x = sum(toDigits x)

sumDigits :: [Integer] -> Integer
sumDigits x = sum(map integerDigitSum x)

validate :: Integer -> Bool
validate x
    | sumDigits(doubleEveryOther(toDigits x)) `mod` 10 == 0 = True
    | otherwise = False

main :: IO()
main = do
-- the first should return True and the last False
    print(doubleEveryOther [1234])
    print(validate 4012888888881881)
    print(validate 4012888888881882)