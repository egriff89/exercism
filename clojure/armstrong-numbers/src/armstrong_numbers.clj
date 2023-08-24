(ns armstrong-numbers)

(defn explode [num]
  (map #(- (int %) (int \0)) (str num)))

(defn exp [base power]
  (apply * (repeat power base)))

(defn armstrong? [num]
  (let [digit (explode num) pow (count digit)]
    (= num (reduce + (map #(exp % pow) digit)))))
