initialization
initialize2
	" self initialize "
	
	DWORD_PTR :=	#ULONG_PTR.
	HALF_PTR := #short. "Half the size of a pointer"
	INT_PTR := #long.
	LONG_PTR := #long.
	PDWORD_PTR := 'DWORD_PTR*'.
	PHALF_PTR := 'HALF_PTR*'.
	PINT_PTR := 'INT_PTR*'.
	PLONG_PTR := 'LONG_PTR*'.
	
	POINTER_32 := '__ptr32'.
	POINTER_64 := '__ptr64'.
	PSIZE_T := 'SIZE_T*'.
	PSSIZE_T := 'SSIZE_T*'.
	PUHALF_PTR := 'UHALF_PTR*'.
	PUINT_PTR := 'UINT_PTR*'.
	PULONG_PTR := 'ULONG_PTR*'.
	SC_HANDLE := #HANDLE.
	SC_LOCK := #LPVOID.
	SERVICE_STATUS_HANDLE := #HANDLE.
	SIZE_T := 'ULONG_PTR'.
	SSIZE_T := 'LONG_PTR'.
	UHALF_PTR := #ushort.  "different in 32/64"
	UINT_PTR := #uint.
	ULONG_PTR := #ulong. "different in 32/64"
	
	
	
	
	

