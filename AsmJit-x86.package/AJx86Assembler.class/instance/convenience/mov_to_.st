mov: src to: dest
	"Ensure right src/dest order"
	
	src = dest ifTrue: [ ^ self ]. "do not if source and dest are same "  
	
	^ self mov: dest with: src