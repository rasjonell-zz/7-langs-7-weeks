# Day 2 Self-Study | Add App all of the number in a 2-dimensional list | p.83

sum2D := method(initialList,
        initialList reduce(prev, curr, prev + curr sum, 0)
    )

sumND := method(initialList, initialList flatten sum)

sum2D(list(list(1, 2, 3), list(4, 5, 6))) println
sumND(list(list(list(list(list(1, 2)))))) println
