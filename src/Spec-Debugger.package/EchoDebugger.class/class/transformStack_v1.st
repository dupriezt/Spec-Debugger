example - stackTransform
transformStack_v1

	| data d |
	"transformation: char -> string"
	data := Stack new push: 3; push: $b; push: 'a'; yourself. "top ->{ 'a'. $b. 3 }"
	"goal: {'a'. 'b'. 3}"
	self transformTopDataOnce_v1: data.
	d := data pop. "returns 'a'. data = {$b. 3}"
	self assert: d equals: 'a'.
	self transformTopDataOnce_v1: data.
	d := data pop. "returns 'b'. data = {3}"
	self assert: d equals: 'b'.
	self transformTopDataOnce_v1: data.
	d := data pop. "returns 3. data = {}"
	self assert: d equals: 3