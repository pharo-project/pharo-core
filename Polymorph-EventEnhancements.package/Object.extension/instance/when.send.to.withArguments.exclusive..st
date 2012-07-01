*Polymorph-EventEnhancements
when: anEventSelector
send: aMessageSelector
to: anObject
withArguments: anArgArray
exclusive: aValueHolder
 
    self
        when: anEventSelector
        evaluate: ((ExclusiveWeakMessageSend
		receiver: anObject
		selector: aMessageSelector
		arguments: anArgArray)
			basicExecuting: aValueHolder)