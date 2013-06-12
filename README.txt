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






