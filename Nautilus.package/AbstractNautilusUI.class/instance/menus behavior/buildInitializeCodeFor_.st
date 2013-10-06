buildInitializeCodeFor: aClass 
	
	^ String streamContents: [:str | 
		str << 'initialize';cr.
		str cr tab << 'super initialize.';cr.
		aClass instVarNames sort do: [ :name | 
			str cr tab << name << ' := nil.' ]].
	