defaultSaveUserDataPreference
	|dictionary sendUsageDataValue |

	self preferences exists ifFalse: [ ^ nil ].
	[ 
		dictionary := FLMaterializer materializeFromFileNamed: self preferences.
		sendUsageDataValue := dictionary at:#sendUsageData ifAbsent: [ ^ nil ].
		sendUsageDataValue ifNil: [ ^ nil ].
		^ sendUsageDataValue 
	] on: Error do: [ 
		^ nil]