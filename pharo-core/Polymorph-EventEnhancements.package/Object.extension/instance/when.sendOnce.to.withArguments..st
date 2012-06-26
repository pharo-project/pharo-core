*Polymorph-EventEnhancements
when: anEventSelector
sendOnce: aMessageSelector
to: anObject
withArguments: anArgArray
 
    self
        when: anEventSelector
        evaluate: (NonReentrantWeakMessageSend
            receiver: anObject
            selector: aMessageSelector
		arguments: anArgArray)