(import circlet)

(defn main [&]
  (circlet/server
    {:status 200
     :headers {"Content-Type" "text/plain"}
     :body "Hello from this little server!"}
    8000))
