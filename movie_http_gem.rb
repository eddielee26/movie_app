require "http"

system "clear"

movies_all = HTTP.get("http://localhost:3000/api/movies_all").parse

pp movies_all