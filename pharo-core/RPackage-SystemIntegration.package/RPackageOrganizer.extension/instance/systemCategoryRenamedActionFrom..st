*RPackage-SystemIntegration
systemCategoryRenamedActionFrom: ann

	| rPackage classesAndProtocolsToRename|
	"we update the rpackage itself with the new name"
	rPackage := self packageNamed: ann oldNameSymbol ifAbsent: [self packageClass new].
	rPackage name: ann newName.
	
	"we update the organizer"
	packages at: ann newName asSymbol put: rPackage.
	packages removeKey: ann oldNameSymbol ifAbsent: [self reportBogusBehaviorOf:   #systemCategoryRenamedActionFrom: ].
	self flag: #cyrille. "Should we not update the backPointer mapping too?"
	"CD: What do you mean by backpointerMapping? By telling a RPackage to rename itself, it should update itself all its internal. 
	Then it just left all references in the organizer to update. For now I see the 'packages' variable. "
	
	"we also rename all the extension protocols in the system with the new name"
	classesAndProtocolsToRename := (rPackage extensionMethods collect: [:aCompiledMethod |
		aCompiledMethod methodClass -> aCompiledMethod category
		]) asSet.
	classesAndProtocolsToRename do: [:anAssociation |
		anAssociation  key organization silentlyRenameCategory:  anAssociation  value toBe: '*', ann newName
		].
		
