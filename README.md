# watch-sys-process-index

`watch-sys-process-index` explores systems programming with a small R codebase and local fixtures. The technical goal is to build an R toolkit that studies process behavior through append-only fixtures, with checkpoint recovery checks and local-only command execution.

## Reason For The Project

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Watch Sys Process Index Review Notes

Start with `allocation pressure` and `dirty state`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What It Does

- `fixtures/domain_review.csv` adds cases for allocation pressure and dirty state.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/watch-sys-process-walkthrough.md` walks through the case spread.
- The R code includes a review path for `allocation pressure` and `dirty state`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `allocation pressure`, `dirty state`, `guard slack`, and `layout drift`.

The R addition stays small enough to inspect in one sitting.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The check exercises the source code and the review fixture. `baseline` is the high score at 180; `stress` is the low score at 148.

## Boundaries

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
