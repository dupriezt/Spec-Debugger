bug - transformStack
transformStack_v2
	"Adding that Integers should be transformed into characters"
	| data d |
	"transformation: int -> char -> string"
	data := Stack new push: 3; push: $b; push: 'a'; yourself. "top ->{ 'a'. $b. 3 }"
	"goal: {'a'. 'b'. $3}"
	self transformTopDataOnce_v2: data.
	d := data pop. "returns 'a'. data = {$b. 3}"
	self assert: d equals: 'a'.
	self transformTopDataOnce_v2: data.
	d := data pop. "returns 'b'. data = {3}"
	self assert: d equals: 'b'.
	self transformTopDataOnce_v2: data.
	d := data pop. "returns '3' instead of the expected $3. data = {}"
	self assert: d equals: $3. "Fails because the integer 3 has been transformed two times (into a string) instead of just into a character"