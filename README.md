# Open Data Science East 2021 Workshop
## Going from Text to Knowledge Graphs: Putting Natural Language Processing and Graph Databases to Work
### Presenter: Dr. Clair J. Sullivan, Graph Data Science Advocate, Neo4j
#### email: clair.sullivan@neo4j.com
#### Twitter: @CJLovesData1

This repository contains all of the software you will need to follow along with this workshop (see abstract below).  It is mostly contained within the Docker container to ensure reproducibility among a variety of operating systems and environments.  

## Downloadable prerequisites

In addition to cloning this repository, participants in this workshop will need to download the following:

- All data will be accessed through public APIs and open source packages.  These packages will be provided via Docker and/or venv.

- All software will be provided and configured through the Docker container.  This includes Jupyter lab, a variety of Python packages (particularly `spacy`, `wikipedia`, and the Python `neo4j` driver), and the Neo4j browser.

- We will be working with the Google Knowledge Graph API.  Users are permitted 100,000 calls per day for free to the API, but will require an API key for the API calls.  A link on how to create this API key is below.  Once the key is created, it is recommended that you store in in a file named `.api_key` at the root level of this repo.


## Useful links

- [Docker for Data Science -- A Step by Step Guide](https://towardsdatascience.com/docker-for-data-science-a-step-by-step-guide-1e5f7f3baf8e)
- [Google Knowledge Graph Search API](https://wikipedia.readthedocs.io/en/latest/)
  - [How to Create a Google Knowledge Graph Search API Key](https://developers.google.com/knowledge-graph/prereqs)
- [Neo4j](https://neo4j.com)
  - [Awesome Procedures on Cypher (APOC)](https://neo4j.com/labs/apoc/)
  - [Cypher Manual](https://neo4j.com/docs/cypher-manual/current/)
  - [Cypher Reference Card](https://neo4j.com/docs/pdf/neo4j-cypher-refcard-stable.pdf)
  - [Graph Data Science (GDS) Library](https://neo4j.com/developer/graph-data-science/)
  - [Python Driver API Docs](https://neo4j.com/docs/api/python-driver/current/)
- [spacy Documentation](https://spacy.io/)
- [Wikipedia package docs](https://wikipedia.readthedocs.io/en/latest/)


## Abstract

In order to turn data into action we must know the context of that data.  Traditionally humans were required to provide that context, however recently more and more context is available through data science approaches.  This is achieved through the conversion of text into entities such as nouns like people and places and the verbs that describe their actions.  In this way, we can obtain the nodes representing those nouns along with the verbs representing the relationships or edges between these nouns.  We can further augment these nodes and edges by identifying words like adjectives further describing the nouns or word occurrences that can add additional relationships between nodes.  This approach of named entity recognition can then be used in a variety of problems, such as creating better search engines or recommender systems.

In this workshop, we will start with an open source data set of text and convert it to a knowledge graph.  We will use standard natural language processing (NLP) packages and approaches in Python to clean that text and create a knowledge graph data model within a graph database that can be queried and turned into data insights.  This data model will include the nodes, edges, and attributes identified through the NLP process that can be used to create the necessary ontologies for the graph.  We will experience the problems associated with generating such knowledge graphs, such as entity disambiguation and the lack of sufficient training data (zero-shot learning).  Attendees of this workshop will create and put to use a complete pipeline for knowledge graph generation and analysis.

