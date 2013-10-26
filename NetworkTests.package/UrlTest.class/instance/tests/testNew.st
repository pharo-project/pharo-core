testNew
	[ super testNew ] 
		on: Deprecation 
		do: [ :notification | notification resume ]