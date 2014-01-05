FROM jarosser06/chef-base
MAINTAINER Jim Rosser, jarosser06@tamu.edu

RUN apt-get update
ADD ./.chef /tmp/chef
RUN chef-solo -c /tmp/chef/solo.rb -j /tmp/chef/solo.json
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx"]
