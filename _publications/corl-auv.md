---
title: "CORL-AUV: CFD Oriented Reinforcement Learning for Autonomous Underwater Vehicles"
authors: Steven Roche, Milo Van Mooy, Nathan McGuire, Levi Cai, Jonathan P. How, Yogesh Girdhar
publication: arXiv preprint arXiv:2607.09557
year: 2026
date: 2026-07-10
image: corl-auv.png
arxiv: "https://arxiv.org/abs/2607.09557"
pdf: "https://arxiv.org/pdf/2607.09557"
bib: true
selected: true
---

Fine grain control and positioning of autonomous underwater vehicles (AUVs) is critical for sampling, maintenance, and survey applications. Traditional control methods for AUVs are labor intensive and are not robust to changes in the vehicle configuration or environmental conditions. Reinforcement learning (RL) promises rapid controller development while handling a range of deployment parameters via domain randomization (DR). However, DR is still limited by the capacity of the underlying simulation to model real physics. In particular, drag physics are difficult to model and are a large contributor to sim-to-real gaps. Meanwhile, computational fluid dynamics (CFD) provides high fidelity drag models but is challenging to leverage within reinforcement learning frameworks due to its computational overhead.

In this paper we exploit the idea of training surrogate approximations of CFD models of a given vehicle, enabling fast inference within RL pipelines. We are the first to successfully deploy a zero-shot RL policy on a 6-DOF AUV in which policy training is performed on surrogate drag models (SDMs) trained on CFD data. We find **31% lower energy usage** compared to a controller using simplified physics while traversing between waypoints **11% faster with 19% less error**. Our SDM based RL controller better predicts zero-shot transfer and is more robust across reward shaping design choices. When using DR to complete a task with perturbed parameters, we find that the CFD policy is the only controller that successfully transfers. The policies are evaluated in a controlled tank environment and in the field providing extensive testing of the policies' capabilities.
