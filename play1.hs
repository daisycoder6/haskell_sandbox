-- main :: IO ()
-- main = putStrLn "Hello haskell"


geturl host key resource id =
                                host ++
                                "/" ++
                                resource ++
                                "/" ++
                                id ++
                                "/" ++
                                key


-- partial function using lambda
genhostbuilder host = (\key resource id ->
                            geturl host key resource id)

{-mydrop mylen mylist = -}