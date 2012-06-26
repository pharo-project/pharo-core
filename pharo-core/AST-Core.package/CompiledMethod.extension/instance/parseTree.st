*ast-core
parseTree
	^ RBParser parseMethod: self sourceCode onError: [ :msg :pos | ^ nil ]