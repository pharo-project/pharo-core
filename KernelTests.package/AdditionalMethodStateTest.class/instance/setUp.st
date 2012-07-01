running
setUp

	| pragma |

	pragma := (Object methodDict at: #at:) penultimateLiteral at: #primitive:.
	
	atState := AdditionalMethodState selector: #at: with: pragma copy.
