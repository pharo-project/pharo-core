compiling
binding
       "Answer a binding for the receiver, sharing if possible"
  	^ self environment associationAt: name ifAbsent: [ nil -> self ]
