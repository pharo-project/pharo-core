initializeMMXRegisters

	" MMX registers "
	self registerBase: 16r60  class: AJMMRegister values: #(
		#MM0 #MM1   #MM2   #MM3   #MM4   #MM5   #MM6   #MM7 ).