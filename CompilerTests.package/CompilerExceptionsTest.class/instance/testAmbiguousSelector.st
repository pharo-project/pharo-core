tests
testAmbiguousSelector
       self
               compiling: 'griffle ^1--1'
               shouldRaise: AmbiguousSelector;
               compiling: 'griffle ^1@-1'
               shouldRaise: AmbiguousSelector;
               compiling: 'griffle ^1+-1'
               shouldRaise: AmbiguousSelector