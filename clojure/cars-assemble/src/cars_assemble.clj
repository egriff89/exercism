(ns cars-assemble)

;; Cars produced per hour at lowest speed (1)
(def cph 221)

(defn production-rate
  "Returns the assembly line's production rate per hour,
   taking into account its success rate"
  [speed]
  (cond (= speed 0) (double 0)
        (and (>= speed 1) (<= speed 4)) (double (* speed cph))
        (and (>= speed 5) (<= speed 8)) (double (* (* speed cph) 0.9))
        (= speed 9) (double (* (* speed cph) 0.8))
        :else (double (* (* speed cph) 0.77))))

(defn working-items
  "Calculates how many working cars are produced per minute"
  [speed]
  (int (/ (production-rate speed) 60)))
