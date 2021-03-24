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

// Get the cosine similarity between two nodes

MATCH (n1:Node {name: 'barack obama'}) 
MATCH (n2:Node {name: 'mitch mcconnell'}) 
RETURN gds.alpha.similarity.cosine(n1.word_vec, n2.word_vec) AS similarity

// Create an in-memory graph of all nodes and relationships
CALL gds.graph.create('all_nodes', 'Node', '*') 
YIELD graphName, nodeCount, relationshipCount

// Run FastRP on full in-memory graph and output results to screen
CALL gds.fastRP.stream('all_nodes', {embeddingDimension: 10})
YIELD nodeId, embedding
RETURN gds.util.asNode(nodeId).name as name, embedding

// Write FastRP embeddings as a vector to each node
CALL gds.fastRP.write('all_nodes', 
    { 
        embeddingDimension: 10, 
        writeProperty: 'fastrp-10'
    } 
)
