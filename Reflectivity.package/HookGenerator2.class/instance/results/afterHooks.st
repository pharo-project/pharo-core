afterHooks
	^links 
			select: [ :each | each control = #after ] 
			thenCollect:  [ :link | (self hookFor: link) parent: node] 