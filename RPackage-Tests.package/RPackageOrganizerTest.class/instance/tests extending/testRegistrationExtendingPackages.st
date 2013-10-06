testRegistrationExtendingPackages
	"self debug: #testRegistrationExtendingPackages"

	| p |
	self assert: (self packageOrganizer extendingPackagesOf: Quadrangle) isEmpty.
	p := self pointRectangleInGraphElement.
	(self packageOrganizer
					registerExtendingPackage:  p
					forClass: Quadrangle).
	self deny: (self packageOrganizer extendingPackagesOf: Quadrangle) isEmpty.
	self assert: (self packageOrganizer extendingPackagesOf: Quadrangle) anyOne name = #GraphElement.
	