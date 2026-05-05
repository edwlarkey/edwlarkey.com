+++
author = "Edward Larkey"
title = "OrthodoxPilgrimage.com"
date = "2026-05-05T08:50:00-05:00"
description = "Map of Orthodox relics in the United States"
tags = ["project", "orthodox", "programming"]
categories = ["programming"]
images  = ["img/blog/orthodoxpilgrimage-screenshot.jpg"]
aliases = ["orthodox-pilgrimage-site"]
+++

# Building a Modern Guide to Orthodox Pilgrimage in North America

Christ is risen! Христосъ воскресе!

In the Orthodox tradition, a pilgrimage is more than just a trip; it is a
physical journey toward the spiritual. Across North America, we are blessed
with the sacred relics of many saints. However, finding these sites has
historically been a challenge. They are often tucked away in parishes across
the country. While a wonderful spiritual experience, not everyone has to take a
trip to Russia or Greece. We have a wonderful treasure of Orthodox Saints here
in North America, and I built [OrthodoxPilgrimage.com](https://orthodoxpilgrimage.com) to show that.

![Screenshot of OrthodoxPilgrimage.com](/img/blog/orthodoxpilgrimage_screenshot.webp "Screenshot of OrthodoxPilgrimage.com")

## The Mission

To provide an interactive, community-driven resource that helps the faithful
discover holy sites available for public veneration and plan their spiritual
journeys. It covers the breadth of North America, from the historic sites in
Alaska to the growing missions across the Midwest.

## The Tech Stack

As a developer, I wanted to build something fast, maintainable and fairly
inexpensive to host. I chose a stack that favors simplicity.

- **Go (Golang):** The backbone of the project. Using the standard library’s
  `net/http` package ensures the app is fast and requires minimal compute
  resources. The entire site compiles down to a single binary.
- **HTMX & Vanilla CSS:** Instead of a heavy JavaScript framework (like React
  or Vue), I used [HTMX](https://htmx.org/). The server sends HTML fragments directly to the
  browser. This provides a "Single Page App" feel with smooth transitions and
  partial page updates—without the complexity of a separate frontend build
  process.
- **OpenStreetMap:** For the map, I utilized OpenLayers & OpenStreetMap to create
  a fluid, mobile-first experience. It dynamically loads markers based on the
  user's viewport, ensuring performance even as our database grows. I wanted to
  use an open source map like OpenStreetMap so I could make corrections if
  needed to the upstream map.
- **SQLite & sqlc:** Data is stored in SQLite, which is perfect for this use
  case. I use `sqlc` to generate type-safe Go code from raw SQL queries,
  giving me the performance of SQL with the safety of a compiled language. I
  also use [Litestream](https://litestream.io/) to back the database up to an object store.
- **Hosting:** I am hosting this project on [fly.io](https://fly.io/). It has the features that I
  need and is pretty cheap for a single Go application to run on and can stop
  the machine when there are no requests. Content is cached in Cloudflare, so
  only uncached requests are sent to this application as needed.

All of the code is available at [github.com/edwlarkey/orthodoxpilgrimage](https://github.com/edwlarkey/orthodoxpilgrimage)

## Data from the Faithful

A project like this lives or dies by the accuracy of its data. The faithful are
encouraged to email updates, new information, photos, etc to
[info@orthodoxpilgrimage.com](mailto:info@orthodoxpilgrimage.com) so I can keep
the site up to date.
