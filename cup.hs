-- cup floz = \_ -> floz
cup floz = \message -> message floz

getOz acup = acup (\floz -> floz)

drink acup ozDrank = if ozDiff >= 0
                        then cup ozDiff
                        else cup 0
    where   floz = getOz acup
            ozDiff = floz - ozDrank

isEmpty acup = getOz acup == 0


coffeeCup = cup 12

