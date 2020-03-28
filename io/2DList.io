# Day 2 Self-Study | 2D List Prototype | p.83

2DList := Object clone

2DList state := list()
2DList dim := method(rows, columns,
    matrix := list() setSize(rows) map(list() setSize(columns))
    self state = matrix
    )

2DList get := method(row, column,
    self state at(row) at(column) 
    )

2DList set := method(row, column, value,
    self state at(row) atPut(column, value)
    )

2DList transpose := method(
    newColumnLen := self state size
    newRowLen := self state at(0) size
    newState := list setSize(newRowLen) map(list() setSize(newColumnLen))

    for(row, 0, newRowLen - 1, 
      for(column, 0, newColumnLen - 1,
        newState at(row) atPut(column, self state at(column) at(row))
        )
      )

    self state = newState
    )

2DList writeToFile := method(path,
    content := self state map(join("")) join("\n")

    f := File with(path) remove openForUpdating write(content)
    f close
    )

2DList readFromFile := method(path,
  f := File with(path) openForReading
  newState := f readLines map(line, line asList map(asNumber))
  self state = newState
  f close
)

matrix := 2DList clone
matrix dim(2, 2)
matrix set(0, 0, 1)
matrix set(0, 1, 2)
matrix set(1, 0, 3)
matrix set(1, 1, 4)

matrix state println
matrix transpose println
matrix writeToFile("./matrix.txt")
matrix readFromFile("./matrix.txt")
matrix state println
