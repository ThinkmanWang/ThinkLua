function isprime(nNum)
    for x = 2, nNum - 1, 1 do
        if nNum % x == 0 then
            return false
        else

        end
    end

    return true
end

function printPrime(b)
    for x = 2, b, 1 do
        if isprime(x) then
            print(x)
        end
    end
end

--print(isprime(19))
printPrime(200)