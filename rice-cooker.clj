(ns rice-cooker)

(defrecord RiceCooker [cooking-time contents])

(defn cook [rice-cooker minutes]
  (if (number? (read-string minutes))
    (do
      (println (str "Cooking for " minutes " minutes."))
      (assoc rice-cooker :cooking-time (read-string minutes)))
    (do
      (println "Invalid input. Please enter a valid number for minutes.")
      rice-cooker)))

(defn remove-items [rice-cooker]
  (do
    (println "Removing items from the rice cooker.")
    rice-cooker))

(defn throw-to-hated-person [rice-cooker]
  (do
    (println "Throwing the rice cooker to someone we don't like.")
    rice-cooker))

(defn use-as-chair [rice-cooker]
  (do
    (println "Sitting on the rice cooker as a chair.")
    rice-cooker))