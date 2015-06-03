runScript
	
	method pragmas 
		select: [:pragma | pragma keyword = #script: ]
		thenDo: [:pragma | 
			self class compiler
				evaluate: pragma arguments first
				for: method methodClass theNonMetaClass
				logged: false.
		UIManager default inform: 'Script with argument executed: ', method name asString  ]