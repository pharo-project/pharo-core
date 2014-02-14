substituteVariableNamed: newVariableName 
    (self owningScope lookupVar: newVariableName) 
        ifNotNil: [ :newBinding | self replaceWith:((self class named: newVariableName ) binding: newBinding)]
