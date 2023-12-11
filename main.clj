(ns main
  (:require [rice-cooker :refer :all]))

(defn execute [rice-cooker]
  (println "Make a choice:")
  (println "1. Cook something")
  (println "2. Remove the food inside")
  (println "3. Throw it to people you don't like")
  (println "4. Use it as a chair")
  (println "5. Exit")

  (let [choice (-> (read-line) clojure.string/trim)]
    (case choice
      "1" (let [minutes (-> (println "Enter cooking time (in minutes):")
                            read-line
                            clojure.string/trim)]
            (let [updated-rice-cooker (cook rice-cooker minutes)]
              (recur updated-rice-cooker)))

      "2" (let [updated-rice-cooker (remove-items rice-cooker)]
            (recur updated-rice-cooker))

      "3" (let [updated-rice-cooker (throw-to-hated-person rice-cooker)]
            (recur updated-rice-cooker))

      "4" (let [updated-rice-cooker (use-as-chair rice-cooker)]
            (recur updated-rice-cooker))

      "5" (do (println "Exiting. Goodbye!") :ok)

      (do (println "Invalid choice. Please enter a number between 1 and 5.")
          (recur rice-cooker)))))

(defn -main []
  (execute (->RiceCooker 0 "")))