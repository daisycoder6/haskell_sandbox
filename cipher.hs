data FourLetterAplphabet = L1|L2|L3|L4 deriving (Show, Enum, Bounded)

-- How does it just pick up the FourLetterAplphabet

rotN :: (Bounded a, Enum a) => Int -> a -> a
rotN alphabetSize c = toEnum rotation
        where
            halfAlphabet = alphabetSize `div` 2
            offset = fromEnum c + halfAlphabet
            rotation = offset `mod` alphabetSize

largestCharNumber :: Int
largestCharNumber = fromEnum(maxBound :: Char)

rotChar :: Char -> Char
rotChar charToEncrypt = rotN sizeOfAlphabet charToEncrypt
    where sizeOfAlphabet = 1 + fromEnum(maxBound :: Char)

message :: [FourLetterAplphabet ]
message = [L1, L3, L4, L1, L1, L2]

encoder :: [FourLetterAplphabet] -> [FourLetterAplphabet]
encoder vals = map rot4l vals
        where
            alphasize= 1 + fromEnum(maxBound :: FourLetterAplphabet)
            rot4l = rotN alphasize