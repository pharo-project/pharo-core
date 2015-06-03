runScript
	method pragmas
		select: [ :pragma | pragma keyword = #script ]
		thenDo: [ :pragma | 
			method methodClass theNonMetaClass perform: method selector.
			UIManager default inform: 'Script executed: ' , method name asString ]