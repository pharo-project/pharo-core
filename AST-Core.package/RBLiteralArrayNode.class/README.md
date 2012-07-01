A RBLiteralArrayNode is an AST node that represents literal arrays and literal byte arrays.

Instance Variables
	contents: <Array of: RBLiteralNode> literal nodes of the array
	isByteArray: <Boolean> if the receiver is a literal byte array
	start: <Integer | nil> source position of #( or #[
	stop: <Integer | nil> source position of ) or ]