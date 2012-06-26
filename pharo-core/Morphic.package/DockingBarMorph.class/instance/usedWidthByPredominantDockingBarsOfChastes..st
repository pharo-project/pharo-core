private - accessing
usedWidthByPredominantDockingBarsOfChastes: predominantChastes 
	"Private - convenience"
	| predominants |
	predominants := self predominantDockingBarsOfChastes: predominantChastes.
	^ predominants isEmpty
		ifTrue: [0]
		ifFalse: [(predominants
				collect: [:each | each width]) sum]