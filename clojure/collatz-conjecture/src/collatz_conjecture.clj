(ns collatz-conjecture)

(defn collatz [num]
 (loop [n num steps 0]
  (cond
   (= n 1) steps
   (<= n 0) (throw (Error. "Cannot be <= 0"))
   (even? n) (recur (/ n 2) (inc steps))
   (odd? n) (recur (+ (* n 3) 1) (inc steps)))))
