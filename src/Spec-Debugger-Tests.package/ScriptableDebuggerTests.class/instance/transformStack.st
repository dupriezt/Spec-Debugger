tests
transformStack

	| data d |
	"transformation: int -> char -> string"
	data := Stack new push: 3; push: $b; push: 'a'; yourself. "top ->{ 'a'. $b. 3 }"
	"goal: {'a'. 'b'. $3}"
	self transformTopDataOnce: data.
	d := data pop. "returns 'a'. data = {$b. 3}"
	self transformTopDataOnce: data.
	d := data pop. "returns 'b'. data = {3}"
	self transformTopDataOnce: data.
	d := data pop. "returns '3' instead of the expected $3. data = {}"