---
layout: page
title: Smart Mirror
description: A Raspberry Pi information display hidden behind see-through mirror glass.
permalink: /projects/smart-mirror/
---

<figure class="media-figure">
  <img src="{{ '/images/projects/smart-mirror.jpg' | relative_url }}" alt="Smart mirror showing the time, weather, hockey scores, moon phase, and a Chuck Norris fact">
  <figcaption>The finished display behind the see-through mirror glass, before the frame went on.</figcaption>
</figure>
I decided to build a smart mirror as a fun personal project. 

The image shows a see-through (two-way) mirror that reflects most of the light that hits it but lets a bright screen behind it shine through. Behind it is a monitor driven by a Raspberry Pi. I used <a href="https://magicmirror.builders/">Magic Mirror</a> to render all the information seen on the display. Once it was working, I built a wooden frame with miter joints around the glass so it hangs like an ordinary mirror.

The display shows:

- **Time and date**, plus a list of upcoming holidays
- **Weather**: current conditions and a multi-day forecast
- **Moon phase**, with the countdown to the next full moon
- **Hockey scores** for the games I'm following
- **Chuck Norris facts**, because every mirror needs one
