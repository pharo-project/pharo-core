as yet unclassified
fixedDomainValueNodeForAssociation: anAssociation 
	| s |
	^ (s := (SettingDeclaration new name: anAssociation key))
		target: s;
		selector: #default;
		default: anAssociation value