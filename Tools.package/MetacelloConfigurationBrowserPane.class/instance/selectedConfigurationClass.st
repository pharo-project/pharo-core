accessing
selectedConfigurationClass

	^Smalltalk at: self selectedConfigurationName asSymbol ifAbsent: [ nil ]