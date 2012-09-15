*RPackage-SystemIntegration
systemMethodAddedActionFrom: ann

	|class selector protocol method rPackage |

	class := ann methodClass.
	protocol := ann protocol ifNil: [ '' ].
	selector := ann selector.
	method := ann method.
	
	"If the method origin is not the one of the event, we do not care about that method"
	method origin = ann methodClass ifFalse: [^ self].
	
	"we have to register the method in the parent RPackage of the class. 
	to do that, we first have to look if the method is an extension from an external package:"
	"1) in some cases, it can happen that protocol is nil (I do not know yet when). That's why we first check if protocol is nil. If it is, we just add the method worrying about anything. 
	This case can happen for exemple when running MCMethodDefinitionTest >> #testLoadAndUnload. Comment the nil check and should get an error."
	"This case come from CompiledMethod >> packageFromOrganizer:"
	
	rPackage := (self hasPackageForProtocol: protocol inClass: method methodClass) 
			ifTrue: [ self packageForProtocol: protocol inClass: method methodClass ]
			ifFalse: [ self registerPackage: (self packageClass named: (protocol copyWithout: $*)) ].
	rPackage addMethod: method.
	
	
	