# Day 2: The Sausage King | Recursive Prototype Chain Iteration | p.81

Object ancestors := method(
    prototype := self proto

    if(prototype != Object,
      writeln("Slots of ", prototype type, "\n--------------")
      prototype slotNames foreach(slotName, writeln(slotName))
      writeln
      prototype ancestors)
    )

Animal := Object clone
Animal speak := method(
    "anmigous animal noise", println)

Duck := Animal clone
Duck speak := method(
    "quack" println)

Duck walk := method(
    "waddle" println)

disco := Duck clone
disco ancestors
