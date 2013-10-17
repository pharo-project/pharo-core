executeString: aString do: projectSpecBlock
    self singleRoot: true.
    (projectSpecGenerator projectSpecCreationBlock value: aString)
        do: [ :projectSpec | projectSpec ifNotNil: [ projectSpecBlock value: (self applyArgsToProjectSpec: projectSpec copy) ] ]