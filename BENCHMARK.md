```
libre (master) $ ab -n 1000 -c 10 http://0.0.0.0:9292/ciudades
This is ApacheBench, Version 2.3 <$Revision: 655654 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 0.0.0.0 (be patient)
Completed 100 requests
Completed 200 requests
Completed 300 requests
Completed 400 requests
Completed 500 requests
Completed 600 requests
Completed 700 requests
Completed 800 requests
Completed 900 requests
Completed 1000 requests
Finished 1000 requests


Server Software:        Webmachine-Ruby/1.4.0
Server Hostname:        0.0.0.0
Server Port:            9292

Document Path:          /ciudades
Document Length:        395 bytes

Concurrency Level:      10
Time taken for tests:   4.310 seconds
Complete requests:      1000
Failed requests:        0
Write errors:           0
Total transferred:      593000 bytes
HTML transferred:       395000 bytes
Requests per second:    232.00 [#/sec] (mean)
Time per request:       43.104 [ms] (mean)
Time per request:       4.310 [ms] (mean, across all concurrent requests)
Transfer rate:          134.35 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.1      0       2
Processing:    14   43  13.0     40     118
Waiting:        9   39  12.5     36     114
Total:         15   43  13.0     41     118

Percentage of the requests served within a certain time (ms)
  50%     41
  66%     44
  75%     47
  80%     48
  90%     55
  95%     64
  98%     93
  99%    105
 100%    118 (longest request)
```
