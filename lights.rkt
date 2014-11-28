#lang racket

(displayln "Hello, world!")

;; TODO: parameterize?  set?
(define arduino-port "/dev/tty.usbmodem14141")
(define pin 7)

(require (planet xtofs/firmata:1:0/firmata))

(define (init)
  (open-firmata arduino-port))

(define (on)
  (set-arduino-pin! pin))

(define (off)
  (clear-arduino-pin! pin))

(provide init
         on
         off)
