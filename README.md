# Open Data Science East 2021 Workshop
## Going from Text to Knowledge Graphs: Putting Natural Language Processing and Graph Databases to Work
### Presenter: Dr. Clair J. Sullivan, Neo4j
#### email: clair.sullivan@neo4j.com
#### Twitter: @CJLovesData1

This repository contains all of the software you will need to follow along with this workshop.  It is mostly contained within the Docker container to ensure reproducibility among a variety of operating systems and environments.  

## Downloadable prerequisites

In addition to cloning this repository, participants in this workshop will need to download the following:

- All data will be accessed through public APIs and open source packages.  These packages will be provided via Docker and/or venv.

- All software will be provided and configured through the Docker container.  This includes Jupyter lab, a variety of Python packages (particularly `spacy`, `wikipedia`, and the Python Neo4j driver), and the Neo4j browser.

- We will be working with the Google Knowledge Graph API.  Users are permitted 100,000 calls per day for free to the API, but will require an API key for the API calls.  A link on how to create this API key is below.  Once the key is created, it is recommended that you store in in a file named `.api_key` at the root level of this repo.


## Useful links

- [Docker for Data Science -- A Step by Step Guide](https://towardsdatascience.com/docker-for-data-science-a-step-by-step-guide-1e5f7f3baf8e)
- [Google Knowledge Graph Search API](https://wikipedia.readthedocs.io/en/latest/)
  - [How to Create a Google Knowledge Graph Search API Key](https://developers.google.com/knowledge-graph/prereqs)
- [Neo4j](https://neo4j.com)
  - [Awesome Procedures on Cypher (APOC)](https://neo4j.com/labs/apoc/)
  - [Graph Data Science (GDS) Library](https://neo4j.com/developer/graph-data-science/)
- [Python Wikipedia package docs](https://wikipedia.readthedocs.io/en/latest/)
- [spacy Documentation](https://spacy.io/)

