---
layout: publication
title: "AI-Driven Magnetic Navigation: Predicting Position from Anomalies"
authors: Steven Roche, Richard Saltus, Manoj Nair
publication: AGU24
year: 2024
doi: "https://agu24.ipostersessions.com/default.aspx?s=12-BD-AE-72-FA-22-24-56-FA-63-AE-73-0B-27-2C-B0"
slides: false
---

## Abstract


GPS is widely used in navigation settings because it can provide exact global coordinates for vehicles. However, GPS is vulnerable to various attacks such as jamming, and viable alternative methods are necessary in the event GPS fails. MagNav is an alternative navigation framework that can be used in all weather conditions, over oceans, and in day or night. The US DoD, with NOAA assisting, is spearheading work on this promising alternative navigation system. In this worksupport of this effort, we investigate the potential of using machine learning methods to predict an aircraft’s position using only a magnetometer and a pre-existing magnetic map for navigation. Moreover, we assume the aircraft does not know its initial position (the so-called “cold-start” problem). Our project discovered that 1-D CNNs have high potential to succeed on this cold-start problem, achieving mean average errors that are approaching the EMAG2 sampling resolution (~4 km) on multiple regions. We also explore methods to make the CNN models robust to errors and uncertainty in instrument measurements and/or map values as well as the effect of varying flight profile lengths. Future work should consider complicating the problem statement by allowing for changes in altitude, velocity, and profile complexity. Overall, this work suggests that machine learning may be a viable tool in the MagNav framework.