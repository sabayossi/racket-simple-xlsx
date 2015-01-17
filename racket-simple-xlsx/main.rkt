#lang racket

(provide (contract-out 
          [with-input-from-xlsx-file (-> path-string? (-> void?) void?)]
          [get-sheet-names (-> list?)]
          [get-cell-value (-> string? any)]
          [load-sheet (-> string? void?)]
          [get-sheet-dimension (-> pair?)]
          [with-row (-> (-> list? any) any)]
          [with-output-to-xlsx-file (-> path-string? void?)]
          ))

(require "reader.rkt")

(require "writer.rkt")