instance creation
newOnClass: aClass 
	"Open a new class browser on this class."
	^ self newOnClass: aClass label: 'Class Browser: ', aClass name