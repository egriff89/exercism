(ns bob
  (:require [clojure.string :refer [trim]]))

(defn response-for [s]
 (let [blank (re-matches #"\s*" (trim s))
       yell (re-matches #"(?=.*[A-Z]+)[A-Z\W\d]+" (trim s))
       question (re-matches #"[\w\W\d\s]+\?" (trim s))
       yell-question (re-matches #"(?=.*[A-Z]+)[A-Z\W\d]+\?" (trim s))]

  (cond
     blank "Fine. Be that way!"
     yell-question "Calm down, I know what I'm doing!"
     yell "Whoa, chill out!"
     question "Sure."
   :else "Whatever.")))
