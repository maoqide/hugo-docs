FROM nginx:1.15.4
ADD ./update /usr/local/bin/
RUN apt-get update -y &&
	apt-get install git cron -y &&
	apt-get clean all &&
	chmod +x /usr/local/bin/update &&
	rm -rf /var/cache/apt/* &&
	rm -rf /usr/share/nginx/html/*
WORKDIR /usr/share/nginx/html
RUN git clone https://github.com/maoqide/maoqide.github.io.git /usr/share/nginx/html &&
	echo '* 2 * * * git -C /usr/local/bin/update >> /var/log/mysite.log' >>  /var/spool/cron/crontabs/root
CMD ["tail", "-f", "/var/log/mysite.log"]
