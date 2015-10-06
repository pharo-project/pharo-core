availablePacks
	"Retrieve all packs available in local disk"
	^ { self current }, ((self destinationPath allChildrenMatching: '*.zip') 
			select: [ :each | each base ~= self current name  ]
			thenCollect: [ :each | self named: each base ])