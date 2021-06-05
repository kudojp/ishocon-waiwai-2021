count:=3
bench:
	sudo cp /dev/null /var/log/nginx/access.log
	./benchmark --workload $(count)
.PHONY: alp
alp: 
	sudo cat /var/log/nginx/access.log | alp ltsv --sort=avg -m "/users/\d+, /products/buy/\d+, /comments/\d+, images/image\d+.jpg, /products/\d+"

