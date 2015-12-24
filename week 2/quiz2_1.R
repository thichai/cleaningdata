library(httr)
require(httpuv)
require(jsonlit)

oauth_endpoints("github")

myapp <- oauth_app("github",
                   key = "3ed33ab3d5216c68348f",
                   secret = "f68b216e6b1da98d24f449a9a8a75c953576f271")

github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

gtoken <- config(token = github_token)

req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)
output <- content(req)
list(output[[8]]$name, output[[8]]$created_at)