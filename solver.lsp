;; 0   white
;; 1   yellow
;; 2   orange
;; 3   red
;; 4   green
;; 5   blue

;; (in up left down right out)
(setq goal-states (
    ((0 0 0 0 0 0 0 0 0) () () () () (5 5 5 5 5 5 5 5 5))
    ((0 0 0 0 0 0 0 0 0) () () () () (5 5 5 5 5 5 5 5 5))
    ((0 0 0 0 0 0 0 0 0) () () () () (5 5 5 5 5 5 5 5 5))
    ((0 0 0 0 0 0 0 0 0) () () () () (5 5 5 5 5 5 5 5 5))
    ((1 1 1 1 1 1 1 1 1) () () () () ())
    ((1 1 1 1 1 1 1 1 1) () () () () ())
    ((1 1 1 1 1 1 1 1 1) () () () () ())
    ((1 1 1 1 1 1 1 1 1) () () () () ())
    ((2 2 2 2 2 2 2 2 2) () () () () ())
    ((2 2 2 2 2 2 2 2 2) () () () () ())
    ((2 2 2 2 2 2 2 2 2) () () () () ())
    ((2 2 2 2 2 2 2 2 2) () () () () ())
    ((3 3 3 3 3 3 3 3 3) () () () () ())
    ((3 3 3 3 3 3 3 3 3) () () () () ())
    ((3 3 3 3 3 3 3 3 3) () () () () ())
    ((3 3 3 3 3 3 3 3 3) () () () () ())
    ((4 4 4 4 4 4 4 4 4) () () () () ())
    ((4 4 4 4 4 4 4 4 4) () () () () ())
    ((4 4 4 4 4 4 4 4 4) () () () () ())
    ((4 4 4 4 4 4 4 4 4) () () () () ())
    ((5 5 5 5 5 5 5 5 5) () () () () ())
    ((5 5 5 5 5 5 5 5 5) () () () () ())
    ((5 5 5 5 5 5 5 5 5) () () () () ())
    ((5 5 5 5 5 5 5 5 5) () () () () ())
))

(defun goal-test (s)
)