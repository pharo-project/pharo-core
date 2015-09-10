pinBoxClicked

	"pinBox labelGraphic: (
		
		owner toggleStayUp
		ifTrue: [ self theme icons testNotRunIcon ]
		ifFalse: [ self theme menuPinForm ]
	) "
	
	owner stayUp: true.
	pinBox lock.