#lang racket

(provide (contract-out
          [create-printer-settings (-> exact-nonnegative-integer? void?)]
          ))

(define (create-printer-settings sheet_nums)
  (make-directory* (build-path "xl" "printerSettings"))
  (let loop ([nums sheet_nums])
    (when (>= nums 1)
          (copy-file
           "printerSettings.template"
           (build-path "xl" "printerSettings" (string-append "printerSettings" (number->string nums))))
          (loop (sub1 nums)))))