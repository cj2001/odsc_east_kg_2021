// Delete all nodes and edges in graph
MATCH (n) DETACH DELETE n

// Update node labels based on node_labels list
MATCH (n:Node) 
CALL apoc.create.addLabels(n, n.node_labels) 
YIELD node 
RETURN node