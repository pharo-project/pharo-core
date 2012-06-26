tests
testUnusedVariable

       self
               compiling: 'griffle | goo | ^nil' shouldRaise: UnusedVariable.

	" does not work for the moment.
      self       compiling: 'griffle ^[ | goo | ]' shouldRaise: UnusedVariable
	"