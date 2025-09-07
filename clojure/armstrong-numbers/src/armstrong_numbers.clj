(ns armstrong-numbers)

(defn explode [num]
  (map #(- (int %) (int \0)) (str num)))

(defn exp [base power]
  (loop [total 1 p power]
   (if (zero? p) total
    (recur (*' total base) (dec p)))))

(defn armstrong? [num]
  (let [digit (explode num) pow (count digit)]
    (= num (reduce + (map #(exp % pow) digit)))))
