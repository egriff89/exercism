(defn is_armstrong_number [number]
  (setv result 
    (sum 
     (lfor x (str number) (** (int x) (len (str number))))))
  (= result number))