private
sortBlockTimestamp
	"Answer block to decide what order to display the directory entries."

	^ [ :x :y | |xIsDir|
			((xIsDir := x isDirectory) = y isDirectory) 
				ifTrue: [   x entry modification  <= y entry modification ]
				ifFalse: [
					"directories always precede files"
					xIsDir ]]