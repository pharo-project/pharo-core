taskbarIcon

	^ model contents 
		ifNil: [ super taskbarIcon ]
		ifNotNil: [ :m |
			m windowIcon
				ifNil: [ m taskbarIcon ] ]