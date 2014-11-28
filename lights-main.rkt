#lang racket

(require "./deferred.rkt")
(require "./lights.rkt")

(init)

(define (cycle)
  (today-at 8 0 do (on))
  (today-at 20 0 do (off))
  (tomorrow-at 0 1 do (cycle)))

(cycle)
