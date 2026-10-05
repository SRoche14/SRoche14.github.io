---
title: "Scholar of the College Thesis: Min-Max Correlation Clustering"
authors: Steven Roche
publication: B.S. Thesis, Boston College (Scholar of the College)
year: 2025
date: 2025-05-01
image: scholar-of-the-college-thesis.png
scholar: "https://scholar.google.com/scholar?cluster=605763685566148964&hl=en"
---

In this paper, we give a 3-approximation algorithm to the min max correlation clustering problem. Given a complete graph, vertices are related by positive and negative edges. A positive edge denotes similar vertices and a negative edge denotes dissimilar vertices, and the goal is to minimize the ℓ<sub>∞</sub>-norm of disagreements over all vertices.

The 3-approximation is possible by observing a structural property of vertices with degree greater than or equal to 3φ, where φ is our guess of the optimal solution. A combinatorial argument demonstrates the correctness of the algorithm, which identifies the optimal φ and has a runtime of O(n<sup>2</sup>D log D log n). This runtime includes determining the φ that corresponds to the optimal objective value over the graph.
