(ns collatz-conjecture)

(defn collatz [num]
  (if-not (pos? num)
    (throw (IllegalArgumentException. "Number must be positive"))
    (loop [n num steps 0]
      (if (= n 1)
        steps
        (let [n2 (if (even? n)
                   (/ n 2)
                   (+ (* n 3) 1))]
          (recur n2 (inc steps)))))))
