fieldsDesc
	^#(
	int old_start "Starting line number in old_file"
	int old_lines "Number of lines in old_file"
	int new_start "Starting line number in new_file"
	int new_lines "Number of lines in new_file"
	size_t header_len "Number of bytes in header text"
	Char128 header "Header text, NUL-byte terminated" 
		)