compiling
binding
       "Answer a binding for the receiver, sharing if possible"
      | binding |
	binding := self environment associationAt: name ifAbsent: [nil -> self].
       ^binding value == self ifTrue: [binding] ifFalse: [nil -> self]
