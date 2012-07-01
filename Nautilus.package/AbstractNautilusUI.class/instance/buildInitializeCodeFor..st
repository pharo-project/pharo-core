menus behavior
buildInitializeCodeFor: aClass 
	
	^ String streamContents: [:str | str << 'initialize';cr.
		str tab << '"Initialization code for '<<aClass name<<'"';cr;cr.
		str tab << 'super initialize.';cr.
		aClass instVarNames sort do: [:name | str cr tab << name << ' := nil.' ]].
	