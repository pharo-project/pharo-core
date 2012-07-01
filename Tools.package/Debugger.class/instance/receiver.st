accessing
receiver
	"Answer the receiver of the selected context, if any. Answer nil 
	otherwise."

	contextStackIndex = 0
		ifTrue: [^nil]
		ifFalse: [^self selectedContext receiver]