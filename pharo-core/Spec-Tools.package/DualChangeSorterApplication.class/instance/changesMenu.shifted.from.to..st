menu
changesMenu: menu shifted: shifted from: src to: dest

	src changeSetMenu1: menu shifted: shifted.
	
	src selectedChangeSet
		ifNotNil:[
			menu 
				add: 'Copy all to the other change set (c)' 
				target: self
				selector: #copyAllFrom:to:
				argumentList: {src.dest}.
			menu 
				add: 'Submerge into the other change set' 
				target: self
				selector: #submerge:into:
				argumentList: {src.dest}.
			menu 
				add: 'Subtract the other change set (-)'
				target: self
				selector: #subtractFrom:to:
				argumentList: {src.dest}.
			menu addLine] .
	
	src changeSetMenu2: menu shifted: shifted.
	^ menu