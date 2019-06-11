instance creation
newOnNode: aNode
	"Used by ScriptableDebugger. Should be removed in favour of newOnNode:setBy: if the latter stays"
	^ self new node: aNode; yourself.