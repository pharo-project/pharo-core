basicInspect: anObject
	"Open an inspector on the given object"
	
	| class |
	
	class := tools at: #basicInspector ifAbsent: [ ^ self error: 'no inspector found' ].
	
	^ class basicInspect: anObject
	
