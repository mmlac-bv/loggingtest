Commit 03d6e85

Log for hitting /foo (inserts a new document and displays it)




Logs for MYSQL ONLY


Started GET "/mysqltest" for 127.0.0.1 at 2013-06-11 20:43:37 -0700
  Processing by MysqltestController#index as HTML
   (0.3ms)  BEGIN
  SQL (0.3ms)  INSERT INTO `mysqlmods` (`created_at`, `fname`, `lname`, `number`, `updated_at`) VALUES ('2013-06-12 03:43:37', 'Fistname', 'Lastname', 42, '2013-06-12 03:43:37')
   (0.5ms)  COMMIT
Rendered mysqltest/index.html.haml within layouts/application (0.1ms)
Completed 200 OK in 18ms (Views: 5.3ms | ActiveRecord: 4.3ms)
[2013-06-11 20:43:37] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/application.css?body=1" for 127.0.0.1 at 2013-06-11 20:43:37 -0700
Served asset /application.css - 304 Not Modified (0ms)
[2013-06-11 20:43:37] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/jquery_ujs.js?body=1" for 127.0.0.1 at 2013-06-11 20:43:37 -0700
Served asset /jquery_ujs.js - 304 Not Modified (0ms)
[2013-06-11 20:43:37] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/jquery.js?body=1" for 127.0.0.1 at 2013-06-11 20:43:37 -0700
Served asset /jquery.js - 304 Not Modified (0ms)
[2013-06-11 20:43:37] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true


Started GET "/assets/application.js?body=1" for 127.0.0.1 at 2013-06-11 20:43:37 -0700
Served asset /application.js - 304 Not Modified (0ms)
[2013-06-11 20:43:37] WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true






Logs for MONGO ONLY


Started GET "/mongotest" for 127.0.0.1 at 2013-06-11 20:57:48 -0700
  Processing by MongotestController#index as HTML
  MOPED: 127.0.0.1:27017 COMMAND      database=admin command={:ismaster=>1} (0.7851ms)
  MOPED: 127.0.0.1:27017 INSERT       database=boadgeville_mongo collection=mongomods documents=[{"_id"=>"51b7f1bcaec06bde42000003", "url"=>"http://google.com", "posted"=>2003-06-12 03:57:48 UTC, "likes"=>123123213213, "tweet"=>"Check out what I found! :o"}] flags=[] (0.1171ms)
  MOPED: 127.0.0.1:27017 QUERY        database=boadgeville_mongo collection=mongomods selector={"$query"=>{}, "$orderby"=>{:_id=>-1}} flags=[] limit=-1 skip=0 batch_size=nil fields=nil (13.7758ms)
Rendered mongotest/index.html.haml within layouts/application (0.3ms)
Completed 200 OK in 54ms (Views: 5.3ms | ActiveRecord: 0.0ms)


Started GET "/assets/application.css?body=1" for 127.0.0.1 at 2013-06-11 20:57:48 -0700
Served asset /application.css - 200 OK (0ms)


Started GET "/assets/jquery_ujs.js?body=1" for 127.0.0.1 at 2013-06-11 20:57:48 -0700
Served asset /jquery_ujs.js - 200 OK (0ms)


Started GET "/assets/jquery.js?body=1" for 127.0.0.1 at 2013-06-11 20:57:48 -0700
Served asset /jquery.js - 200 OK (0ms)


Started GET "/assets/application.js?body=1" for 127.0.0.1 at 2013-06-11 20:57:48 -0700
Served asset /application.js - 200 OK (0ms)






