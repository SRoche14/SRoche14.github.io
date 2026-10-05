---
title: "Feedback-Modulated Harmonic Policies for Quadruped Locomotion"
authors: Yixuan Jia, Steven Roche, Jonathan P. How
publication: arXiv preprint arXiv:2609.17946
year: 2026
date: 2026-09-16
image: harmonic-quadruped.png
arxiv: "https://arxiv.org/abs/2609.17946"
pdf: "https://arxiv.org/pdf/2609.17946"
bib: true
selected: true
---

Learned quadruped locomotion policies commonly map observations directly to joint-level actions, leaving the periodic structure of locomotion implicit in the policy. We investigate an alternative representation in which each joint trajectory is expressed as a command-conditioned Fourier series and modified online using feedback from the robot state. A context network generates the Fourier coefficients and the weights of a per-step feedback network, whose outputs adjust joint offsets, harmonic gains, frequency, and phase during execution.

In simulation, we examine this explicit frequency structure alongside the hidden activations of an MLP policy that directly outputs joint targets. The harmonic waveforms change frequency and shape with commanded speed. Dynamic mode decomposition of selected MLP rollouts reveals dominant activation modes near the foot-height oscillation frequency and its second harmonic, showing periodic structure without an explicit Fourier generator. On a Unitree Go2, the simulation-trained harmonic controller records a provisional onboard-estimated peak speed of 3.67 m/s and carries added loads up to 5.883 kg in separate trials.
