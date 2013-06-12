Commit 03d6e85

Log for hitting /foo (inserts a new document and displays it)




Started GET "/foo" for 127.0.0.1 at 2013-06-11 20:04:40 -0700
  Processing by FooController#index as HTML
   (0.1ms)  BEGIN
  SQL (0.2ms)  INSERT INTO `bars` (`created_at`, `fname`, `lname`, `number`, `updated_at`) VALUES ('2013-06-12 03:04:40', 'Fistname', 'Lastname', 42, '2013-06-12 03:04:40')
   (0.4ms)  COMMIT
Rendered foo/index.html.haml within layouts/application (0.1ms)
Completed 200 OK in 16ms (Views: 4.9ms | ActiveRecord: 2.7ms)


Started GET "/assets/application.css?body=1" for 127.0.0.1 at 2013-06-11 20:04:40 -0700
Served asset /application.css - 200 OK (0ms)


Started GET "/assets/jquery.js?body=1" for 127.0.0.1 at 2013-06-11 20:04:40 -0700
Served asset /jquery.js - 200 OK (0ms)


Started GET "/assets/jquery_ujs.js?body=1" for 127.0.0.1 at 2013-06-11 20:04:40 -0700
Served asset /jquery_ujs.js - 200 OK (0ms)


Started GET "/assets/application.js?body=1" for 127.0.0.1 at 2013-06-11 20:04:40 -0700
Served asset /application.js - 200 OK (0ms)






