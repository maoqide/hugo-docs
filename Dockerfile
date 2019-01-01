FROM nginx:1.15.4
ADD ./update /usr/local/bin/
RUN apt-get update -y && \
	apt-get install git cron -y && \
	apt-get clean all && \
	chmod +x /usr/local/bin/update && \
	ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	echo 'Asia/Shanghai' >/etc/timezone && \
	rm -rf /var/cache/apt/* &&\
	rm -f /usr/share/nginx/html/*
WORKDIR /usr/share/nginx/html
ENV REPO_URL https://github.com/maoqide/maoqide.github.io.git
RUN touch /var/log/mysite.log && \
	echo '0 2 * * * (date && /usr/local/bin/update) >> /var/log/mysite.log' >>  /var/spool/cron/crontabs/root && \
	crontab /var/spool/cron/crontabs/root && \
	git clone $REPO_URL /usr/share/nginx/html
ADD ./startup.sh /root/startup.sh
CMD ["sh", "/root/startup.sh"]
