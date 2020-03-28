# Day 2: The Sausage King | Running Io program from a file | p.74

Car := Object clone
Car drive := method("Vroom" print)

yeraz := Car clone

yeraz drive := method(
    i := 1

    while(
      i <= 10,
      self proto drive; "! " print

      i = i + 1
      )
    )

yeraz drive
