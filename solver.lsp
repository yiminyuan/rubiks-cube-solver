;; 0   white
;; 1   yellow
;; 2   orange
;; 3   red
;; 4   green
;; 5   blue

;; (in up left down right out)
;;
;; 0 1 2
;; 3 4 5
;; 6 7 8
;; (0 1 2 3 4 5 6 7 8)
;;
(setq goal-states '(
    ((0 0 0 0 0 0 0 0 0) (1 1 1 1 1 1 1 1 1) (2 2 2 2 2 2 2 2 2) (4 4 4 4 4 4 4 4 4) (3 3 3 3 3 3 3 3 3) (5 5 5 5 5 5 5 5 5))
    ((0 0 0 0 0 0 0 0 0) (3 3 3 3 3 3 3 3 3) (1 1 1 1 1 1 1 1 1) (2 2 2 2 2 2 2 2 2) (4 4 4 4 4 4 4 4 4) (5 5 5 5 5 5 5 5 5))
    ((0 0 0 0 0 0 0 0 0) (4 4 4 4 4 4 4 4 4) (3 3 3 3 3 3 3 3 3) (1 1 1 1 1 1 1 1 1) (2 2 2 2 2 2 2 2 2) (5 5 5 5 5 5 5 5 5))
    ((0 0 0 0 0 0 0 0 0) (2 2 2 2 2 2 2 2 2) (4 4 4 4 4 4 4 4 4) (3 3 3 3 3 3 3 3 3) (1 1 1 1 1 1 1 1 1) (5 5 5 5 5 5 5 5 5))
    ((1 1 1 1 1 1 1 1 1) (0 0 0 0 0 0 0 0 0) (3 3 3 3 3 3 3 3 3) (5 5 5 5 5 5 5 5 5) (2 2 2 2 2 2 2 2 2) (4 4 4 4 4 4 4 4 4))
    ((1 1 1 1 1 1 1 1 1) (2 2 2 2 2 2 2 2 2) (0 0 0 0 0 0 0 0 0) (3 3 3 3 3 3 3 3 3) (5 5 5 5 5 5 5 5 5) (4 4 4 4 4 4 4 4 4))
    ((1 1 1 1 1 1 1 1 1) (5 5 5 5 5 5 5 5 5) (2 2 2 2 2 2 2 2 2) (0 0 0 0 0 0 0 0 0) (3 3 3 3 3 3 3 3 3) (4 4 4 4 4 4 4 4 4))
    ((1 1 1 1 1 1 1 1 1) (3 3 3 3 3 3 3 3 3) (5 5 5 5 5 5 5 5 5) (2 2 2 2 2 2 2 2 2) (0 0 0 0 0 0 0 0 0) (4 4 4 4 4 4 4 4 4))
    ((2 2 2 2 2 2 2 2 2) (0 0 0 0 0 0 0 0 0) (1 1 1 1 1 1 1 1 1) (5 5 5 5 5 5 5 5 5) (4 4 4 4 4 4 4 4 4) (3 3 3 3 3 3 3 3 3))
    ((2 2 2 2 2 2 2 2 2) (4 4 4 4 4 4 4 4 4) (0 0 0 0 0 0 0 0 0) (1 1 1 1 1 1 1 1 1) (5 5 5 5 5 5 5 5 5) (3 3 3 3 3 3 3 3 3))
    ((2 2 2 2 2 2 2 2 2) (5 5 5 5 5 5 5 5 5) (4 4 4 4 4 4 4 4 4) (0 0 0 0 0 0 0 0 0) (1 1 1 1 1 1 1 1 1) (3 3 3 3 3 3 3 3 3))
    ((2 2 2 2 2 2 2 2 2) (1 1 1 1 1 1 1 1 1) (5 5 5 5 5 5 5 5 5) (4 4 4 4 4 4 4 4 4) (0 0 0 0 0 0 0 0 0) (3 3 3 3 3 3 3 3 3))
    ((3 3 3 3 3 3 3 3 3) (0 0 0 0 0 0 0 0 0) (4 4 4 4 4 4 4 4 4) (5 5 5 5 5 5 5 5 5) (1 1 1 1 1 1 1 1 1) (2 2 2 2 2 2 2 2 2))
    ((3 3 3 3 3 3 3 3 3) (1 1 1 1 1 1 1 1 1) (0 0 0 0 0 0 0 0 0) (4 4 4 4 4 4 4 4 4) (5 5 5 5 5 5 5 5 5) (2 2 2 2 2 2 2 2 2))
    ((3 3 3 3 3 3 3 3 3) (5 5 5 5 5 5 5 5 5) (1 1 1 1 1 1 1 1 1) (0 0 0 0 0 0 0 0 0) (4 4 4 4 4 4 4 4 4) (2 2 2 2 2 2 2 2 2))
    ((3 3 3 3 3 3 3 3 3) (4 4 4 4 4 4 4 4 4) (5 5 5 5 5 5 5 5 5) (1 1 1 1 1 1 1 1 1) (0 0 0 0 0 0 0 0 0) (2 2 2 2 2 2 2 2 2))
    ((4 4 4 4 4 4 4 4 4) (0 0 0 0 0 0 0 0 0) (2 2 2 2 2 2 2 2 2) (5 5 5 5 5 5 5 5 5) (3 3 3 3 3 3 3 3 3) (1 1 1 1 1 1 1 1 1))
    ((4 4 4 4 4 4 4 4 4) (3 3 3 3 3 3 3 3 3) (0 0 0 0 0 0 0 0 0) (2 2 2 2 2 2 2 2 2) (5 5 5 5 5 5 5 5 5) (1 1 1 1 1 1 1 1 1))
    ((4 4 4 4 4 4 4 4 4) (5 5 5 5 5 5 5 5 5) (3 3 3 3 3 3 3 3 3) (0 0 0 0 0 0 0 0 0) (2 2 2 2 2 2 2 2 2) (1 1 1 1 1 1 1 1 1))
    ((4 4 4 4 4 4 4 4 4) (2 2 2 2 2 2 2 2 2) (5 5 5 5 5 5 5 5 5) (3 3 3 3 3 3 3 3 3) (0 0 0 0 0 0 0 0 0) (1 1 1 1 1 1 1 1 1))
    ((5 5 5 5 5 5 5 5 5) (4 4 4 4 4 4 4 4 4) (2 2 2 2 2 2 2 2 2) (1 1 1 1 1 1 1 1 1) (3 3 3 3 3 3 3 3 3) (0 0 0 0 0 0 0 0 0))
    ((5 5 5 5 5 5 5 5 5) (3 3 3 3 3 3 3 3 3) (4 4 4 4 4 4 4 4 4) (2 2 2 2 2 2 2 2 2) (1 1 1 1 1 1 1 1 1) (0 0 0 0 0 0 0 0 0))
    ((5 5 5 5 5 5 5 5 5) (1 1 1 1 1 1 1 1 1) (3 3 3 3 3 3 3 3 3) (4 4 4 4 4 4 4 4 4) (2 2 2 2 2 2 2 2 2) (0 0 0 0 0 0 0 0 0))
    ((5 5 5 5 5 5 5 5 5) (2 2 2 2 2 2 2 2 2) (1 1 1 1 1 1 1 1 1) (3 3 3 3 3 3 3 3 3) (4 4 4 4 4 4 4 4 4) (0 0 0 0 0 0 0 0 0))
))

;; (in up left down right out)
;;
;; 0 1
;; 2 3
;; (0 1 2 3)
;;
(setq goal-states-2d '(
    ((0 0 0 0) (1 1 1 1) (2 2 2 2) (4 4 4 4) (3 3 3 3) (5 5 5 5))
    ((0 0 0 0) (3 3 3 3) (1 1 1 1) (2 2 2 2) (4 4 4 4) (5 5 5 5))
    ((0 0 0 0) (4 4 4 4) (3 3 3 3) (1 1 1 1) (2 2 2 2) (5 5 5 5))
    ((0 0 0 0) (2 2 2 2) (4 4 4 4) (3 3 3 3) (1 1 1 1) (5 5 5 5))
    ((1 1 1 1) (0 0 0 0) (3 3 3 3) (5 5 5 5) (2 2 2 2) (4 4 4 4))
    ((1 1 1 1) (2 2 2 2) (0 0 0 0) (3 3 3 3) (5 5 5 5) (4 4 4 4))
    ((1 1 1 1) (5 5 5 5) (2 2 2 2) (0 0 0 0) (3 3 3 3) (4 4 4 4))
    ((1 1 1 1) (3 3 3 3) (5 5 5 5) (2 2 2 2) (0 0 0 0) (4 4 4 4))
    ((2 2 2 2) (0 0 0 0) (1 1 1 1) (5 5 5 5) (4 4 4 4) (3 3 3 3))
    ((2 2 2 2) (4 4 4 4) (0 0 0 0) (1 1 1 1) (5 5 5 5) (3 3 3 3))
    ((2 2 2 2) (5 5 5 5) (4 4 4 4) (0 0 0 0) (1 1 1 1) (3 3 3 3))
    ((2 2 2 2) (1 1 1 1) (5 5 5 5) (4 4 4 4) (0 0 0 0) (3 3 3 3))
    ((3 3 3 3) (0 0 0 0) (4 4 4 4) (5 5 5 5) (1 1 1 1) (2 2 2 2))
    ((3 3 3 3) (1 1 1 1) (0 0 0 0) (4 4 4 4) (5 5 5 5) (2 2 2 2))
    ((3 3 3 3) (5 5 5 5) (1 1 1 1) (0 0 0 0) (4 4 4 4) (2 2 2 2))
    ((3 3 3 3) (4 4 4 4) (5 5 5 5) (1 1 1 1) (0 0 0 0) (2 2 2 2))
    ((4 4 4 4) (0 0 0 0) (2 2 2 2) (5 5 5 5) (3 3 3 3) (1 1 1 1))
    ((4 4 4 4) (3 3 3 3) (0 0 0 0) (2 2 2 2) (5 5 5 5) (1 1 1 1))
    ((4 4 4 4) (5 5 5 5) (3 3 3 3) (0 0 0 0) (2 2 2 2) (1 1 1 1))
    ((4 4 4 4) (2 2 2 2) (5 5 5 5) (3 3 3 3) (0 0 0 0) (1 1 1 1))
    ((5 5 5 5) (4 4 4 4) (2 2 2 2) (1 1 1 1) (3 3 3 3) (0 0 0 0))
    ((5 5 5 5) (3 3 3 3) (4 4 4 4) (2 2 2 2) (1 1 1 1) (0 0 0 0))
    ((5 5 5 5) (1 1 1 1) (3 3 3 3) (4 4 4 4) (2 2 2 2) (0 0 0 0))
    ((5 5 5 5) (2 2 2 2) (1 1 1 1) (3 3 3 3) (4 4 4 4) (0 0 0 0))
))

(defun goal-test (s)
    (cond
        ((null (member s goal-states :test #'equal)) nil)
        (t t)
    )
)

(defun goal-test-2d (s)
    (cond
        ((null (member s goal-states-2d :test #'equal)) nil)
        (t t)
    )
)

(defun next-states (s)
    (append (next-state-1 s) (next-state-2 s) (next-state-3 s))
)

(defun next-states-2d (s)
    (append (next-state-1-2d s) (next-state-2-2d s) (next-state-3-2d s))
)

(defun next-state-1 (s)
    (let
        (
            (in    (nth 0 s))
            (up    (nth 1 s))
            (left  (nth 2 s))
            (down  (nth 3 s))
            (right (nth 4 s))
            (out   (nth 5 s))
        )
        (list
            ; 0th column (up)
            (list
                (append
                    (list (nth 0 down) (nth 1 in) (nth 2 in))
                    (list (nth 3 down) (nth 4 in) (nth 5 in))
                    (list (nth 6 down) (nth 7 in) (nth 8 in))
                )
                (append
                    (list (nth 0 in) (nth 1 up) (nth 2 up))
                    (list (nth 3 in) (nth 4 up) (nth 5 up))
                    (list (nth 6 in) (nth 7 up) (nth 8 up))
                )
                (append
                    (list (nth 2 left) (nth 5 left) (nth 8 left))
                    (list (nth 1 left) (nth 4 left) (nth 7 left))
                    (list (nth 0 left) (nth 3 left) (nth 6 left))
                )
                (append
                    (list (nth 0 out) (nth 1 down) (nth 2 down))
                    (list (nth 3 out) (nth 4 down) (nth 5 down))
                    (list (nth 6 out) (nth 7 down) (nth 8 down))
                )
                (copy-list right)
                (append
                    (list (nth 0 up) (nth 1 out) (nth 2 out))
                    (list (nth 3 up) (nth 4 out) (nth 5 out))
                    (list (nth 6 up) (nth 7 out) (nth 8 out))
                )
            )
            ; 0th column (down)
            (list
                (append
                    (list (nth 0 up) (nth 1 in) (nth 2 in))
                    (list (nth 3 up) (nth 4 in) (nth 5 in))
                    (list (nth 6 up) (nth 7 in) (nth 8 in))
                )
                (append
                    (list (nth 0 out) (nth 1 up) (nth 2 up))
                    (list (nth 3 out) (nth 4 up) (nth 5 up))
                    (list (nth 6 out) (nth 7 up) (nth 8 up))
                )
                (append
                    (list (nth 6 left) (nth 3 left) (nth 0 left))
                    (list (nth 7 left) (nth 4 left) (nth 1 left))
                    (list (nth 8 left) (nth 5 left) (nth 2 left))
                )
                (append
                    (list (nth 0 in) (nth 1 down) (nth 2 down))
                    (list (nth 3 in) (nth 4 down) (nth 5 down))
                    (list (nth 6 in) (nth 7 down) (nth 8 down))
                )
                (copy-list right)
                (append
                    (list (nth 0 down) (nth 1 out) (nth 2 out))
                    (list (nth 3 down) (nth 4 out) (nth 5 out))
                    (list (nth 6 down) (nth 7 out) (nth 8 out))
                )
            )
            ; 1st column (up)
            (list
                (append
                    (list (nth 0 in) (nth 1 down) (nth 2 in))
                    (list (nth 3 in) (nth 4 down) (nth 5 in))
                    (list (nth 6 in) (nth 7 down) (nth 8 in))
                )
                (append
                    (list (nth 0 up) (nth 1 in) (nth 2 up))
                    (list (nth 3 up) (nth 4 in) (nth 5 up))
                    (list (nth 6 up) (nth 7 in) (nth 8 up))
                )
                (copy-list left)
                (append
                    (list (nth 0 down) (nth 1 out) (nth 2 down))
                    (list (nth 3 down) (nth 4 out) (nth 5 down))
                    (list (nth 6 down) (nth 7 out) (nth 8 down))
                )
                (copy-list right)
                (append
                    (list (nth 0 out) (nth 1 up) (nth 2 out))
                    (list (nth 3 out) (nth 4 up) (nth 5 out))
                    (list (nth 6 out) (nth 7 up) (nth 8 out))
                )
            )
            ; 1st column (down)
            (list
                (append
                    (list (nth 0 in) (nth 1 up) (nth 2 in))
                    (list (nth 3 in) (nth 4 up) (nth 5 in))
                    (list (nth 6 in) (nth 7 up) (nth 8 in))
                )
                (append
                    (list (nth 0 up) (nth 1 out) (nth 2 up))
                    (list (nth 3 up) (nth 4 out) (nth 5 up))
                    (list (nth 6 up) (nth 7 out) (nth 8 up))
                )
                (copy-list left)
                (append
                    (list (nth 0 down) (nth 1 in) (nth 2 down))
                    (list (nth 3 down) (nth 4 in) (nth 5 down))
                    (list (nth 6 down) (nth 7 in) (nth 8 down))
                )
                (copy-list right)
                (append
                    (list (nth 0 out) (nth 1 down) (nth 2 out))
                    (list (nth 3 out) (nth 4 down) (nth 5 out))
                    (list (nth 6 out) (nth 7 down) (nth 8 out))
                )
            )
            ; 2nd column (up)
            (list
                (append
                    (list (nth 0 in) (nth 1 in) (nth 2 down))
                    (list (nth 3 in) (nth 4 in) (nth 5 down))
                    (list (nth 6 in) (nth 7 in) (nth 8 down))
                )
                (append
                    (list (nth 0 up) (nth 1 up) (nth 2 in))
                    (list (nth 3 up) (nth 4 up) (nth 5 in))
                    (list (nth 6 up) (nth 7 up) (nth 8 in))
                )
                (copy-list left)
                (append
                    (list (nth 0 down) (nth 1 down) (nth 2 out))
                    (list (nth 3 down) (nth 4 down) (nth 5 out))
                    (list (nth 6 down) (nth 7 down) (nth 8 out))
                )
                (append
                    (list (nth 6 right) (nth 3 right) (nth 0 right))
                    (list (nth 7 right) (nth 4 right) (nth 1 right))
                    (list (nth 8 right) (nth 5 right) (nth 2 right))
                )
                (append
                    (list (nth 0 out) (nth 1 out) (nth 2 up))
                    (list (nth 3 out) (nth 4 out) (nth 5 up))
                    (list (nth 6 out) (nth 7 out) (nth 8 up))
                )
            )
            ; 2nd column (down)
            (list
                (append
                    (list (nth 0 in) (nth 1 in) (nth 2 up))
                    (list (nth 3 in) (nth 4 in) (nth 5 up))
                    (list (nth 6 in) (nth 7 in) (nth 8 up))
                )
                (append
                    (list (nth 0 up) (nth 1 up) (nth 2 out))
                    (list (nth 3 up) (nth 4 up) (nth 5 out))
                    (list (nth 6 up) (nth 7 up) (nth 8 out))
                )
                (copy-list left)
                (append
                    (list (nth 0 down) (nth 1 down) (nth 2 in))
                    (list (nth 3 down) (nth 4 down) (nth 5 in))
                    (list (nth 6 down) (nth 7 down) (nth 8 in))
                )
                (append
                    (list (nth 2 right) (nth 5 right) (nth 8 right))
                    (list (nth 1 right) (nth 4 right) (nth 7 right))
                    (list (nth 0 right) (nth 3 right) (nth 6 right))
                )
                (append
                    (list (nth 0 out) (nth 1 out) (nth 2 down))
                    (list (nth 3 out) (nth 4 out) (nth 5 down))
                    (list (nth 6 out) (nth 7 out) (nth 8 down))
                )
            )
        )
    )
)

(defun next-state-1-2d (s)
    (let
        (
            (in    (nth 0 s))
            (up    (nth 1 s))
            (left  (nth 2 s))
            (down  (nth 3 s))
            (right (nth 4 s))
            (out   (nth 5 s))
        )
        (list
            ; 0th column (up)
            (list
                (append
                    (list (nth 0 down) (nth 1 in))
                    (list (nth 2 down) (nth 3 in))
                )
                (append
                    (list (nth 0 in) (nth 1 up))
                    (list (nth 2 in) (nth 3 up))
                )
                (append
                    (list (nth 1 left) (nth 3 left))
                    (list (nth 0 left) (nth 2 left))
                )
                (append
                    (list (nth 0 out) (nth 1 down))
                    (list (nth 2 out) (nth 3 down))
                )
                (copy-list right)
                (append
                    (list (nth 0 up) (nth 1 out))
                    (list (nth 2 up) (nth 3 out))
                )
            )
            ; 0th column (down)
            (list
                (append
                    (list (nth 0 up) (nth 1 in))
                    (list (nth 2 up) (nth 3 in))
                )
                (append
                    (list (nth 0 out) (nth 1 up))
                    (list (nth 2 out) (nth 3 up))
                )
                (append
                    (list (nth 2 left) (nth 0 left))
                    (list (nth 3 left) (nth 1 left))
                )
                (append
                    (list (nth 0 in) (nth 1 down))
                    (list (nth 2 in) (nth 3 down))
                )
                (copy-list right)
                (append
                    (list (nth 0 down) (nth 1 out))
                    (list (nth 2 down) (nth 3 out))
                )
            )
            ; 1st column (up)
            (list
                (append
                    (list (nth 0 in) (nth 1 down))
                    (list (nth 2 in) (nth 3 down))
                )
                (append
                    (list (nth 0 up) (nth 1 in))
                    (list (nth 2 up) (nth 3 in))
                )
                (copy-list left)
                (append
                    (list (nth 0 down) (nth 1 out))
                    (list (nth 2 down) (nth 3 out))
                )
                (append
                    (list (nth 2 right) (nth 0 right))
                    (list (nth 3 right) (nth 1 right))
                )
                (append
                    (list (nth 0 out) (nth 1 up))
                    (list (nth 2 out) (nth 3 up))
                )
            )
            ; 1st column (down)
            (list
                (append
                    (list (nth 0 in) (nth 1 up))
                    (list (nth 2 in) (nth 3 up))
                )
                (append
                    (list (nth 0 up) (nth 1 out))
                    (list (nth 2 up) (nth 3 out))
                )
                (copy-list left)
                (append
                    (list (nth 0 down) (nth 1 in))
                    (list (nth 2 down) (nth 3 in))
                )
                (append
                    (list (nth 1 right) (nth 3 right))
                    (list (nth 0 right) (nth 2 right))
                )
                (append
                    (list (nth 0 out) (nth 1 down))
                    (list (nth 2 out) (nth 3 down))
                )
            )
        )
    )
)

(defun next-state-2 (s)
    (let
        (
            (in    (nth 0 s))
            (up    (nth 1 s))
            (left  (nth 2 s))
            (down  (nth 3 s))
            (right (nth 4 s))
            (out   (nth 5 s))
        )
        (list
            ; 0th row (left)
            (list
                (append ;in
                    (list (nth 0 right) (nth 1 right) (nth 2 right))
                    (list (nth 3 in) (nth 4 in) (nth 5 in))
                    (list (nth 6 in) (nth 7 in) (nth 8 in))
                )
                (append ;up 
                    (list (nth 6 up) (nth 3 up) (nth 0 up))
                    (list (nth 7 up) (nth 4 up) (nth 1 up))
                    (list (nth 8 up) (nth 5 up) (nth 2 up))
                )
                (append ;left 
                    (list (nth 0 in) (nth 1 in) (nth 2 in))
                    (list (nth 3 left) (nth 4 left) (nth 5 left))
                    (list (nth 6 left) (nth 7 left) (nth 8 left))
                )
                (copy-list down)
                (append ; right 
                    (list (nth 8 out) (nth 7 out) (nth 6 out))
                    (list (nth 3 right) (nth 4 right) (nth 5 right))
                    (list (nth 6 right) (nth 7 right) (nth 8 right))
                )
                (append ; out 
                    (list (nth 0 out) (nth 1 out) (nth 2 out))
                    (list (nth 3 out) (nth 4 out) (nth 5 out))
                    (list (nth 2 left) (nth 1 left) (nth 0 left))
                )
            )
            ; 0th right (right)
            (list
                (append ; in
                    (list (nth 0 left) (nth 1 left) (nth 2 left))
                    (list (nth 3 in) (nth 4 in) (nth 5 in))
                    (list (nth 6 in) (nth 7 in) (nth 8 in))
                )
                (append ; up
                    (list (nth 2 up) (nth 5 up) (nth 8 up))
                    (list (nth 1 up) (nth 4 up) (nth 7 up))
                    (list (nth 0 up) (nth 3 up) (nth 6 up))
                )
                (append ; left
                    (list (nth 8 out) (nth 7 out) (nth 6 out))
                    (list (nth 3 left) (nth 4 left) (nth 5 left))
                    (list (nth 6 left) (nth 7 left) (nth 8 left))
                )
                (copy-list down)
                (append ; right
                    (list (nth 0 in) (nth 1 in) (nth 2 in))
                    (list (nth 3 right) (nth 4 right) (nth 5 right))
                    (list (nth 6 right) (nth 7 right) (nth 8 right))
                )
                (append ; out
                    (list (nth 0 out) (nth 1 out) (nth 2 out))
                    (list (nth 3 out) (nth 4 out) (nth 5 out))
                    (list (nth 2 right) (nth 1 right) (nth 0 right))
                )
            )
            ; 1st row (left)
            (list
                (append ; in
                    (list (nth 0 in) (nth 1 in) (nth 2 in))
                    (list (nth 3 right) (nth 4 right) (nth 5 right))
                    (list (nth 6 in) (nth 7 in) (nth 8 in))
                )
                (copy-list up)
                (append ; left
                    (list (nth 0 left) (nth 1 left) (nth 2 left))
                    (list (nth 3 in) (nth 4 in) (nth 5 in))
                    (list (nth 6 left) (nth 7 left) (nth 8 left))
                )
                (copy-list down)
                (append ; right
                    (list (nth 0 right) (nth 1 right) (nth 2 right))
                    (list (nth 5 out) (nth 4 out) (nth 3 out))
                    (list (nth 6 right) (nth 7 right) (nth 8 right))
                )
                (append ; out
                    (list (nth 0 out) (nth 1 out) (nth 2 out))
                    (list (nth 5 left) (nth 4 left) (nth 3 left))
                    (list (nth 6 out) (nth 7 out) (nth 8 out))
                )
            )
            ; 1st row (right)
            (list
                (append ; in
                    (list (nth 0 in) (nth 1 in) (nth 2 in))
                    (list (nth 3 left) (nth 4 left) (nth 5 left))
                    (list (nth 6 in) (nth 7 in) (nth 8 in))
                )
                (copy-list up)
                (append ; left
                    (list (nth 0 left) (nth 1 left) (nth 2 left))
                    (list (nth 5 out) (nth 4 out) (nth 3 out))
                    (list (nth 6 left) (nth 7 left) (nth 8 left))
                )
                (copy-list down)
                (append ; right
                    (list (nth 0 right) (nth 1 right) (nth 2 right))
                    (list (nth 3 in) (nth 4 in) (nth 5 in))
                    (list (nth 6 right) (nth 7 right) (nth 8 right))
                )
                (append ; out
                    (list (nth 0 out) (nth 1 out) (nth 2 out))
                    (list (nth 5 right) (nth 4 right) (nth 3 right))
                    (list (nth 6 out) (nth 7 out) (nth 8 out))
                )
            )
            ; 2nd row (left)
            (list
                 (append ; in
                    (list (nth 0 in) (nth 1 in) (nth 2 in))
                    (list (nth 3 in) (nth 4 in) (nth 5 in))
                    (list (nth 6 right) (nth 7 right) (nth 8 right))
                )
                (copy-list up)
                (append ; left
                    (list (nth 0 left) (nth 1 left) (nth 2 left))
                    (list (nth 3 left) (nth 4 left) (nth 5 left))
                    (list (nth 6 in) (nth 7 in) (nth 8 in))
                )
                (append ; down
                    (list (nth 2 down) (nth 5 down) (nth 8 down))
                    (list (nth 1 down) (nth 4 down) (nth 7 down))
                    (list (nth 0 down) (nth 3 down) (nth 6 down))
                )
                (append ; right
                    (list (nth 0 right) (nth 1 right) (nth 2 right))
                    (list (nth 3 right) (nth 4 right) (nth 5 right))
                    (list (nth 2 out) (nth 1 out) (nth 0 out))
                )
                (append ; out
                    (list (nth 8 left) (nth 7 left) (nth 6 left))
                    (list (nth 3 out) (nth 4 out) (nth 5 out))
                    (list (nth 6 out) (nth 7 out) (nth 8 out))
                )           
            )
            ; 2nd row (right)
            (list
                 (append ; in
                    (list (nth 0 in) (nth 1 in) (nth 2 in))
                    (list (nth 3 in) (nth 4 in) (nth 5 in))
                    (list (nth 6 left) (nth 7 left) (nth 8 left))
                )
                (copy-list up)
                (append ; left
                    (list (nth 0 left) (nth 1 left) (nth 2 left))
                    (list (nth 3 left) (nth 4 left) (nth 5 left))
                    (list (nth 2 out) (nth 1 out) (nth 0 out))
                )
                (append ; down
                    (list (nth 6 down) (nth 3 down) (nth 0 down))
                    (list (nth 7 down) (nth 4 down) (nth 1 down))
                    (list (nth 8 down) (nth 5 down) (nth 2 down))
                )
                (append ; right
                    (list (nth 0 right) (nth 1 right) (nth 2 right))
                    (list (nth 3 right) (nth 4 right) (nth 5 right))
                    (list (nth 6 in) (nth 7 in) (nth 8 in))
                )
                (append ; out
                    (list (nth 8 right) (nth 7 right) (nth 6 right))
                    (list (nth 3 out) (nth 4 out) (nth 5 out))
                    (list (nth 6 out) (nth 7 out) (nth 8 out))
                )           
            )
        )
    )
)

(defun next-state-2-2d (s)
    (let
        (
            (in    (nth 0 s))
            (up    (nth 1 s))
            (left  (nth 2 s))
            (down  (nth 3 s))
            (right (nth 4 s))
            (out   (nth 5 s))
        )
        (list
            ; 0th row (left)
            (list
                (append ;in
                    (list (nth 0 right) (nth 1 right))
                    (list (nth 2 in) (nth 3 in))
                )
                (append ;up 
                    (list (nth 2 up) (nth 0 up))
                    (list (nth 3 up) (nth 1 up))
                )
                (append ;left 
                    (list (nth 0 in) (nth 1 in))
                    (list (nth 2 left) (nth 3 left))
                )
                (copy-list down)
                (append ; right 
                    (list (nth 3 out) (nth 2 out))
                    (list (nth 2 right) (nth 3 right))
                )
                (append ; out 
                    (list (nth 0 out) (nth 1 out))
                    (list (nth 1 left) (nth 0 left))
                )
            )
            ; 0th right (right)
            (list
                (append ;in
                    (list (nth 0 left) (nth 1 left))
                    (list (nth 2 in) (nth 3 in))
                )
                (append ;up 
                    (list (nth 1 up) (nth 3 up))
                    (list (nth 0 up) (nth 2 up))
                )
                (append ;left 
                    (list (nth 3 out) (nth 2 out))
                    (list (nth 2 left) (nth 3 left))
                )
                (copy-list down)
                (append ; right 
                    (list (nth 0 in) (nth 1 in))
                    (list (nth 2 right) (nth 3 right))
                )
                (append ; out 
                    (list (nth 0 out) (nth 1 out))
                    (list (nth 1 right) (nth 0 right))
                )
            )
            ; 1st row (left)
            (list
                (append ;in
                    (list (nth 0 in) (nth 1 in))
                    (list (nth 2 right) (nth 3 right))
                )
                (copy-list up)
                (append ;left 
                    (list (nth 0 left) (nth 1 left))
                    (list (nth 2 in) (nth 3 in))
                )
                (append ; down
                    (list (nth 1 down) (nth 3 down))
                    (list (nth 0 down) (nth 2 down))
                )
                (append ; right 
                    (list (nth 0 right) (nth 1 right))
                    (list (nth 1 out) (nth 0 out))
                )
                (append ; out 
                    (list (nth 3 left) (nth 2 left))
                    (list (nth 2 out) (nth 3 out))
                )
            )
            ; 1st row (right)
            (list
                (append ;in
                    (list (nth 0 in) (nth 1 in))
                    (list (nth 2 left) (nth 3 left))
                )
                (copy-list up)
                (append ;left 
                    (list (nth 0 left) (nth 1 left))
                    (list (nth 1 out) (nth 0 out))
                )
                (append ; down
                    (list (nth 2 down) (nth 0 down))
                    (list (nth 3 down) (nth 1 down))
                )
                (append ; right 
                    (list (nth 0 right) (nth 1 right))
                    (list (nth 2 in) (nth 3 in))
                )
                (append ; out 
                    (list (nth 3 right) (nth 2 right))
                    (list (nth 2 out) (nth 3 out))
                )
            )
        )
    )
)

(defun next-state-3 (s)
    (let
        (
            (in    (nth 0 s))
            (up    (nth 1 s))
            (left  (nth 2 s))
            (down  (nth 3 s))
            (right (nth 4 s))
            (out   (nth 5 s))
        )
        (list
            ; 0th layer (counterclockwise)
            (list
                (append
                    (list (nth 2 in) (nth 5 in) (nth 8 in))
                    (list (nth 1 in) (nth 4 in) (nth 7 in))
                    (list (nth 0 in) (nth 3 in) (nth 6 in))
                )
                (append
                    (list (nth 0 up) (nth 1 up) (nth 2 up))
                    (list (nth 3 up) (nth 4 up) (nth 5 up))
                    (list (nth 0 right) (nth 3 right) (nth 6 right))
                )
                (append
                    (list (nth 0 left) (nth 1 left) (nth 8 up))
                    (list (nth 3 left) (nth 4 left) (nth 7 up))
                    (list (nth 6 left) (nth 7 left) (nth 6 up))
                )
                (append
                    (list (nth 2 left) (nth 5 left) (nth 8 left))
                    (list (nth 3 down) (nth 4 down) (nth 5 down))
                    (list (nth 6 down) (nth 7 down) (nth 8 down))
                )
                (append
                    (list (nth 2 down) (nth 1 right) (nth 2 right))
                    (list (nth 1 down) (nth 4 right) (nth 5 right))
                    (list (nth 0 down) (nth 7 right) (nth 8 right))
                )
                (copy-list out)
            )
            ; 0th layer (clockwise)
            (list
                (append
                    (list (nth 6 in) (nth 3 in) (nth 0 in))
                    (list (nth 7 in) (nth 4 in) (nth 1 in))
                    (list (nth 8 in) (nth 5 in) (nth 2 in))
                )
                (append
                    (list (nth 0 up) (nth 1 up) (nth 2 up))
                    (list (nth 3 up) (nth 4 up) (nth 5 up))
                    (list (nth 8 left) (nth 5 left) (nth 2 left))
                )
                (append
                    (list (nth 0 left) (nth 1 left) (nth 0 down))
                    (list (nth 3 left) (nth 4 left) (nth 1 down))
                    (list (nth 6 left) (nth 7 left) (nth 2 down))
                )
                (append
                    (list (nth 6 right) (nth 3 right) (nth 0 right))
                    (list (nth 3 down) (nth 4 down) (nth 5 down))
                    (list (nth 6 down) (nth 7 down) (nth 8 down))
                )
                (append
                    (list (nth 6 up) (nth 1 right) (nth 2 right))
                    (list (nth 7 up) (nth 4 right) (nth 5 right))
                    (list (nth 8 up) (nth 7 right) (nth 8 right))
                )
                (copy-list out)
            )
            ; 1st layer (counterclockwise)
            (list
                (copy-list in)
                (append
                    (list (nth 0 up) (nth 1 up) (nth 2 up))
                    (list (nth 1 right) (nth 4 right) (nth 7 right))
                    (list (nth 6 up) (nth 7 up) (nth 8 up))
                )
                (append
                    (list (nth 0 left) (nth 5 up) (nth 2 left))
                    (list (nth 3 left) (nth 4 up) (nth 5 left))
                    (list (nth 6 left) (nth 3 up) (nth 8 left))
                )
                (append
                    (list (nth 0 down) (nth 1 down) (nth 2 down))
                    (list (nth 1 left) (nth 4 left) (nth 7 left))
                    (list (nth 6 down) (nth 7 down) (nth 8 down))
                )
                (append
                    (list (nth 0 right) (nth 5 down) (nth 2 right))
                    (list (nth 3 right) (nth 4 down) (nth 5 right))
                    (list (nth 6 right) (nth 3 down) (nth 8 right))
                )
                (copy-list out)
            )
            ; 1st layer (clockwise)
            (list
                (copy-list in)
                (append
                    (list (nth 0 up) (nth 1 up) (nth 2 up))
                    (list (nth 7 left) (nth 4 left) (nth 1 left))
                    (list (nth 6 up) (nth 7 up) (nth 8 up))
                )
                (append
                    (list (nth 0 left) (nth 3 down) (nth 2 left))
                    (list (nth 3 left) (nth 4 down) (nth 5 left))
                    (list (nth 6 left) (nth 5 down) (nth 8 left))
                )
                (append
                    (list (nth 0 down) (nth 1 down) (nth 2 down))
                    (list (nth 7 right) (nth 4 right) (nth 1 right))
                    (list (nth 6 down) (nth 7 down) (nth 8 down))
                )
                (append
                    (list (nth 0 right) (nth 3 up) (nth 2 right))
                    (list (nth 3 right) (nth 4 up) (nth 5 right))
                    (list (nth 6 right) (nth 5 up) (nth 8 right))
                )
                (copy-list out)
            )
            ; 2nd layer (counterclockwise)
            (list
                (copy-list in)
                (append
                    (list (nth 2 right) (nth 5 right) (nth 8 right))
                    (list (nth 3 up) (nth 4 up) (nth 5 up))
                    (list (nth 6 up) (nth 7 up) (nth 8 up))
                )
                (append
                    (list (nth 2 up) (nth 1 left) (nth 2 left))
                    (list (nth 1 up) (nth 4 left) (nth 5 left))
                    (list (nth 0 up) (nth 7 left) (nth 8 left))
                )
                (append
                    (list (nth 0 down) (nth 1 down) (nth 2 down))
                    (list (nth 3 down) (nth 4 down) (nth 5 down))
                    (list (nth 0 left) (nth 3 left) (nth 6 left))
                )
                (append
                    (list (nth 0 right) (nth 1 right) (nth 8 down))
                    (list (nth 3 right) (nth 4 right) (nth 7 down))
                    (list (nth 6 right) (nth 7 right) (nth 6 down))
                )
                (append
                    (list (nth 6 out) (nth 3 out) (nth 0 out))
                    (list (nth 7 out) (nth 4 out) (nth 1 out))
                    (list (nth 8 out) (nth 5 out) (nth 2 out))
                )
            )
            ; 2nd layer (clockwise)
            (list
                (copy-list in)
                (append
                    (list (nth 6 left) (nth 3 left) (nth 0 left))
                    (list (nth 3 up) (nth 4 up) (nth 5 up))
                    (list (nth 6 up) (nth 7 up) (nth 8 up))
                )
                (append
                    (list (nth 6 down) (nth 1 left) (nth 2 left))
                    (list (nth 7 down) (nth 4 left) (nth 5 left))
                    (list (nth 8 down) (nth 7 left) (nth 8 left))
                )
                (append
                    (list (nth 0 down) (nth 1 down) (nth 2 down))
                    (list (nth 3 down) (nth 4 down) (nth 5 down))
                    (list (nth 8 right) (nth 5 right) (nth 2 right))
                )
                (append
                    (list (nth 0 right) (nth 1 right) (nth 0 up))
                    (list (nth 3 right) (nth 4 right) (nth 1 up))
                    (list (nth 6 right) (nth 7 right) (nth 2 up))
                )
                (append
                    (list (nth 2 out) (nth 5 out) (nth 8 out))
                    (list (nth 1 out) (nth 4 out) (nth 7 out))
                    (list (nth 0 out) (nth 3 out) (nth 6 out))
                )
            )
        )
    )
)

(defun next-state-3-2d (s)
    (let
        (
            (in    (nth 0 s))
            (up    (nth 1 s))
            (left  (nth 2 s))
            (down  (nth 3 s))
            (right (nth 4 s))
            (out   (nth 5 s))
        )
        (list
            ; 0th layer (counterclockwise)
            (list
                (append
                    (list (nth 1 in) (nth 3 in))
                    (list (nth 0 in) (nth 2 in))
                )
                (append
                    (list (nth 0 up) (nth 1 up))
                    (list (nth 0 right) (nth 2 right))
                )
                (append
                    (list (nth 0 left) (nth 3 up))
                    (list (nth 2 left) (nth 2 up))
                )
                (append
                    (list (nth 1 left) (nth 3 left))
                    (list (nth 2 down) (nth 3 down))
                )
                (append
                    (list (nth 1 down) (nth 1 right))
                    (list (nth 0 down) (nth 3 right))
                )
                (copy-list out)
            )
            ; 0th layer (clockwise)
            (list
                (append
                    (list (nth 2 in) (nth 0 in))
                    (list (nth 3 in) (nth 1 in))
                )
                (append
                    (list (nth 0 up) (nth 1 up))
                    (list (nth 3 left) (nth 1 left))
                )
                (append
                    (list (nth 0 left) (nth 0 down))
                    (list (nth 2 left) (nth 1 down))
                )
                (append
                    (list (nth 2 right) (nth 0 right))
                    (list (nth 2 down) (nth 3 down))
                )
                (append
                    (list (nth 2 up) (nth 1 right))
                    (list (nth 3 up) (nth 3 right))
                )
                (copy-list out)
            )
            ; 1st layer (counterclockwise)
            (list
                (copy-list in)
                (append
                    (list (nth 1 right) (nth 3 right))
                    (list (nth 2 up) (nth 3 up))
                )
                (append
                    (list (nth 1 up) (nth 1 left))
                    (list (nth 0 up) (nth 3 left))
                )
                (append
                    (list (nth 0 down) (nth 1 down))
                    (list (nth 0 left) (nth 2 left))
                )
                (append
                    (list (nth 0 right) (nth 3 down))
                    (list (nth 2 right) (nth 2 down))
                )
                (append
                    (list (nth 2 out) (nth 0 out))
                    (list (nth 3 out) (nth 1 out))
                )
            )
            ; 1st layer (clockwise)
            (list
                (copy-list in)
                (append
                    (list (nth 2 left) (nth 0 left))
                    (list (nth 2 up) (nth 3 up))
                )
                (append
                    (list (nth 2 down) (nth 1 left))
                    (list (nth 3 down) (nth 3 left))
                )
                (append
                    (list (nth 0 down) (nth 1 down))
                    (list (nth 3 right) (nth 1 right))
                )
                (append
                    (list (nth 0 right) (nth 0 up))
                    (list (nth 2 right) (nth 1 up))
                )
                (append
                    (list (nth 1 out) (nth 3 out))
                    (list (nth 0 out) (nth 2 out))
                )
            )
        )
    )
)

(defun h0 (s)
    0
)

(defun reload()
    (load "solver.lsp")
)

(defun load-a-star()
    (load "a-star.lsp")
)

(defun reload-all()
    (reload)
    (load-a-star)
)

(defun solver (s h)
    (a* s #'goal-test #'next-states h)
)

(defun solver-2d (s h)
    (a* s #'goal-test-2d #'next-states-2d h)
)
