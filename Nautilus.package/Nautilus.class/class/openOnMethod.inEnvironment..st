opening
openOnMethod: aMethod inEnvironment: anEnvironment

	| instance class |
	class := aMethod methodClass.
	instance := self new.
	instance browsedEnvironment: anEnvironment.
	instance showInstance: class isMeta not.
	instance showGroups: false.
	instance package: class packageWrapper class: class category: aMethod protocol asString method: aMethod.
	instance open.
		
	^ instance