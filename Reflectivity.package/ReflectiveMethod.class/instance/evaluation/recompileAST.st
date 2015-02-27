recompileAST
	self flag: #TBD. "Here we need to use the transforming compiler pluging in the fututer"
	compiledMethod := self ast generate: compiledMethod trailer.