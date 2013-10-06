when: anEventSelector
sendOnce: aMessageSelector
to: anObject
 
    self
        when: anEventSelector
        evaluate: (NonReentrantWeakMessageSend
            receiver: anObject
            selector: aMessageSelector)