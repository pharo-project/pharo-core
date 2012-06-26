private
actualFilenameFor: uri
	| subElements subDir entry |
	(uri isEmpty and: [ self prefix isEmpty ]) ifTrue: [ ^ self indexFileIn: self directory ].
	(self prefix isEmpty or: [ uri pathSegments beginsWith: self prefix ]) ifFalse: [ ^ nil ].
	subElements := (uri pathSegments allButFirst: self prefix size) reject: [ :each | each = #/ ].
	subDir := subElements allButLast inject: self directory into: [ :parent :sub |
		(parent directoryExists: sub)
			ifTrue: [ parent / sub ]
			ifFalse: [ ^ nil ] ]. 
	subElements isEmpty
		ifTrue: [ entry := subDir containingDirectory directoryEntryFor: subDir basename ] 
		ifFalse: [ (entry := subDir directoryEntryFor: subElements last) ifNil: [ ^ nil ] ].
	^ entry isDirectory 
		ifTrue: [ self indexFileIn: entry asFileDirectory ]
		ifFalse: [ entry fullName ]