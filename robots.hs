robot (name, attack, hp) = \message -> message (name, attack, hp)


-- like fst and snd of two value tuple
name (n,_,_) = n
attack (_,a,_) =a
hp (_,_,hp) = hp

-- accessor mean don't have to remember order of tuple

getName arobot = arobot name
getAttack arobot = arobot attack
getHP arobot = arobot hp


-- Intersting you're returning a new robot object with a new name ...not changing state
setName arobot newName= arobot (\(n,a,h) -> robot (newName, a, h))
setAttack arobot newAttack= arobot (\(n,a,h) -> robot (n, newAttack,h))
setHP arobot newHP= arobot (\(n,a,h) -> robot (n, a, newHP))

printRobot arobot = arobot (\(n,a,h) -> n ++
                                        " attack:" ++ (show a) ++
                                        " hp:" ++ show(h))

damage arobot attackDamage = arobot (\(n,a,h) ->
                                        robot (n,a,h-attackDamage))

fight arobot defender = damage defender attack
    where attack = if getHP arobot > 10
                    then getAttack arobot
                    else 0


