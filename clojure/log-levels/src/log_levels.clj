(ns log-levels
  (:require [clojure.string :as str]))

(defn message
  "Takes a string representing a log line
   and returns its message with whitespace trimmed."
  [s]
  (str/trim (get (str/split s #"\:") 1)))

(defn log-level
  "Takes a string representing a log line
   and returns its level in lower-case."
  [s]
  (-> (get (str/split s #"\:") 0)
      (str/split #"\[")
      (get 1)
      (str/split #"\]")
      (get 0)
      (str/lower-case)
      (str/trim)))
  
;; (str/trim (get (str/split s #"\:") 0))
(defn reformat
  "Takes a string representing a log line and formats it
   with the message first and the log level in parentheses."
  [s]
  (format "%s (%s)" (message s) (log-level s)))
