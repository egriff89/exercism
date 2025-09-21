(defn square_of_sum [number]
  (** (sum (range 1 (+ number 1))) 2))

(defn sum_of_squares [number]
  (if (= number 1)
    number
    (+ (** number 2) (sum_of_squares (- number 1)))))

(defn difference_of_squares [number]
  (- (square_of_sum number) (sum_of_squares number)))
