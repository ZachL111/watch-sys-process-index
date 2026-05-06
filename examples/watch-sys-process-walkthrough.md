# Watch Sys Process Index Walkthrough

I use this file as a small checklist before changing the R implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | allocation pressure | 180 | ship |
| stress | dirty state | 148 | ship |
| edge | guard slack | 157 | ship |
| recovery | layout drift | 175 | ship |
| stale | allocation pressure | 176 | ship |

Start with `baseline` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around dirty state and layout drift.
