initialExtent
	"Make the full debugger longer!"

	dependents size < 9 ifTrue: [^ super initialExtent].	"Pre debug window"
	RealEstateAgent standardWindowExtent y < 400 "a tiny screen" 
		ifTrue: [^ super initialExtent].
	
	^ [ | w h |
		w := Display width.
		h := Display height.
		(w - (w // 3)) @ (h - (h // 5)) ]
		on: Error
		do: [800@600 ]
