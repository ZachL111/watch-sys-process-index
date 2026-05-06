source("R/domain_review.R")

item <- list(signal=73, slack=54, drag=22, confidence=46)
stopifnot(domain_review_score(item) == 180)
stopifnot(domain_review_lane(item) == "ship")
