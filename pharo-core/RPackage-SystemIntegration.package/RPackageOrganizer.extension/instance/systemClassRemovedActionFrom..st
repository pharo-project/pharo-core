*RPackage-SystemIntegration
systemClassRemovedActionFrom: ann
	"A class has been removed, we should update the package adequately."
	
	| class className rPackage categoryName |	
	'herrrrrre ' logCr.
	class := ann removedClass.
	className  := class isObsolete 
		ifTrue: [ (class name copyFrom:   'AnObsolete' size + 1 to: class name size ) asSymbol ]
		ifFalse:  [  class name asSymbol ].
		
	self fullyRemoveClassNamed: className.
	