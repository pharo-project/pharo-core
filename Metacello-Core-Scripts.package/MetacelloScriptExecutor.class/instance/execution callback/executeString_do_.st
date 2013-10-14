executeString: aString do: projectSpecBlock
    self singleRoot: true.
    ((projectSpecGenerator projectSpecLookupBlock value: aString) select: self projectSpecSelectBlock)
        do: [ :projectSpec | projectSpecBlock value: (self applyArgsToProjectSpec: projectSpec copy) ]