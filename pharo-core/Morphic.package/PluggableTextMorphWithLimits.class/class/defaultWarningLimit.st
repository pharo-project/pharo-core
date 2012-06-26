accessing
defaultWarningLimit

	^ DefaultWarningLimit ifNil: [ DefaultWarningLimit := 350 ]