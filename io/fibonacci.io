# Day 2 Self-Study | Fibonacci | p.83

Fibonacci := Object clone

Fibonacci recursive := method(n,
    if (n == 1, return 1)

    innerFunc := method(iter, prev, current,
      if(iter == n,
        return prev + current,
        return innerFunc(iter + 1, current, prev + current)
        )
      )

    return innerFunc(2, 0, 1)
    )

Fibonacci loop := method(n,
    if(n == 1, return 1)

    prevVal := 0
    currentVal := 1

    for(i, 2, n,
      if(i == n,
        return prevVal + currentVal,
        tempVal := currentVal
        currentVal = prevVal + tempVal
        prevVal = tempVal
        )
      )
    )

list(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) foreach(num, Fibonacci recursive(num) println)
#list(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) foreach(num, Fibonacci loop(num) println)

