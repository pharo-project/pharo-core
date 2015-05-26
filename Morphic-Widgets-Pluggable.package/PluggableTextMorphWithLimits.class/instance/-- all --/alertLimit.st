alertLimit

	^ alertLimit ifNil: [ alertLimit := 2 * (self warningLimit) ]