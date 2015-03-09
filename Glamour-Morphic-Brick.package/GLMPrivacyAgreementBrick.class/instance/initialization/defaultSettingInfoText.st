defaultSettingInfoText

	^ 'Current default setting: ', (self defaultSaveUserDataPreference
		ifNil: [ 'not set (no data is send by default)' ]
		ifNotNil: [ :aBoolean |
			aBoolean 
				ifTrue: [ 'send anonymous usage data' ]
				ifFalse: [ 'do not send any usage data' ] ])