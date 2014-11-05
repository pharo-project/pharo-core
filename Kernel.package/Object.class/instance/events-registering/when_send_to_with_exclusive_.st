when: anEventSelector
send: aMessageSelector
to: anObject
with: anArg
exclusive: aValueHolder
 
    self
        when: anEventSelector
        evaluate: ((ExclusiveWeakMessageSend
 		receiver: anObject
		selector: aMessageSelector
		arguments: (Array with: anArg))
			basicExecuting: aValueHolder)