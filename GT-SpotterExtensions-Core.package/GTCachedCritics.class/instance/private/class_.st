class: aClass
	^ self classes at: aClass name ifAbsentPut: [ RBClassEnvironment class: aClass ]