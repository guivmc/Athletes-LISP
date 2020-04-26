(defclass athlete ()
   ((totalScore :accessor athlete-totalScore)
      (ginScore :accessor athlete-ginScore)
      (lift :accessor athlete-lift)
      (thorws :accessor athlete-thorws)
      (judoMove :accessor athlete-judoMove)
   )
)

(defmethod shotPut ((object athlete))
    (setf throw (make-array '(3)))
        
    (setf (aref throw 0) (+ 1 (random 500)))
    (setf (aref throw 1) (+ 1 (random 500)))
    (setf (aref throw 2) (+ 1 (random 500)))
    
    (setf (athlete-thorws object) (+ (aref throw 0) (aref throw 1) (aref throw 2)))
)

(defmethod artisticGymnastics ((object athlete))
    (setf scores (make-array '(5)))
        
    (setf (aref scores 0) (+ 1 (random 10)))
    (setf (aref scores 1) (+ 1 (random 10)))
    (setf (aref scores 2) (+ 1 (random 10)))
    (setf (aref scores 3) (+ 1 (random 10)))
    (setf (aref scores 4) (+ 1 (random 10)))
    
    
    ;(sort 'scores#'<)
    
    (setf (athlete-ginScore object) (+ (aref scores 0) (aref scores 1) (aref scores 2) (aref scores 3) (aref scores 4)))
)

(setf a1 (make-instance 'athlete))
(setf a2 (make-instance 'athlete))




(shotPut a1)
(shotPut a2)

(if (> (athlete-thorws a1) (athlete-thorws a2))
    (write-line "Athlete1 wins on shot Put round!")
)
(if (< (athlete-thorws a1) (athlete-thorws a2))
    (write-line "Athlete2 wins on shot Put round!")
)
(if (= (athlete-thorws a1) (athlete-thorws a2))
    (write-line "Draw")
)


(artisticGymnastics a1)
(artisticGymnastics a2)

(if (> (athlete-ginScore a1) (athlete-ginScore a2))
    (write-line "Athlete1 wins on Artistic Gymnastics round!")
)
(if (< (athlete-ginScore a1) (athlete-ginScore a2))
    (write-line "Athlete2 wins on Artistic Gymnastics round!")
)
(if (= (athlete-ginScore a1) (athlete-ginScore a2))
    (write-line "Draw")
)



(setf (athlete-judoMove a1) (+  (random 3)))
(setf (athlete-judoMove a2) (+  (random 3)))

(if (> (athlete-judoMove a1) (athlete-judoMove a2))
    (write-line "Athlete1 wins on Judo round!")
)
(if (< (athlete-judoMove a1) (athlete-judoMove a2))
    (write-line "Athlete2 wins on Judo round!")
)
(if (= (athlete-judoMove a1) (athlete-judoMove a2))
    (write-line "Draw")
)

(setf (athlete-lift a1) (+ 1 (random 500)))
(setf (athlete-lift a2) (+ 1 (random 500)))

(if (> (athlete-lift a1) (athlete-lift a2))
    (write-line "Athlete1 wins on Weightlifting  round!")
)
(if (< (athlete-lift a1) (athlete-lift a2))
    (write-line "Athlete2 wins on Weightlifting  round!")
)
(if (= (athlete-lift a1) (athlete-lift a2))
    (write-line "Draw")
)


(setf (athlete-totalScore a1) (+ (athlete-judoMove a1) (athlete-thorws a1) (athlete-lift a1) (athlete-ginScore a1)))
(setf (athlete-totalScore a2) (+ (athlete-judoMove a2) (athlete-thorws a2) (athlete-lift a2) (athlete-ginScore a2)))

(if (> (athlete-totalScore a1) (athlete-totalScore a2))
    (write-line "Athlete1 wins!")
)
(if (< (athlete-totalScore a1) (athlete-totalScore a2))
    (write-line "Athlete2 wins!")
)
(if (= (athlete-totalScore a1) (athlete-totalScore a2))
    (write-line "Draw")
)
