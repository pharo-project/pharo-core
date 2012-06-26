accessing
warningLimit

		^ warningLimit ifNil: [ warningLimit := self class defaultWarningLimit ]