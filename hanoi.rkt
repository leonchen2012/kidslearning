#lang racket/base
(require racket/string)
(define (move src
(define (hanoi disks src des aux)
  (if (= disks 1)
      (writeln (string-join (list "Move one from" src "to" des) " "))
      (begin
        (hanoi (- disks 1) src aux des)
        (writeln (string-join (list "Move one from" src "to" des) " "))
        (hanoi (- disks 1) aux des src))))
(hanoi 3 "src" "des" "aux")