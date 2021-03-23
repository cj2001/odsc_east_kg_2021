// GENERAL QUERIES

// Delete all nodes and edges in graph
MATCH (n) DETACH DELETE n

// Update node labels based on node_labels list
MATCH (n:Node) 
CALL apoc.create.addLabels(n, n.node_labels) 
YIELD node 
RETURN node

// WORKSHOP QUERIES

// Where is Michelle Obama?
MATCH (n:Node)
WHERE n.name CONTAINS 'michelle'
RETURN n.name

// How many Obama's are in the graph?

MATCH (n:Node)
WHERE n.name CONTAINS 'obama'
RETURN DISTINCT n.name


