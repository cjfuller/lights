#lang racket

(require deferred)
(require "./lights.rkt")

(init)

(define (cycle)
  (today-at 8 0 (on))
  (today-at 20 0 (off))
  (tomorrow-at 0 1 (cycle)))

(cycle)
