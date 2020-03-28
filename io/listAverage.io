# Day 2 Self-Study | list average | p.83

MyList := List clone
MyList myAverage := method(
    if(self isEmpty, Exception raise("Cannot compute average on an empty list"))
    if(self detect(elem, elem type != "Number"), Exception raise("The list elements must be Numbers"))

    return self sum / self size
    )

numbers := MyList clone
numbers append(1, 2, 3, 4)
numbers myAverage println

incorrectList := MyList clone
incorrectList append(1, 2, true, "some string")
incorrectList myAverage println

emptyList := MyList clone
emptyList myAverage println

