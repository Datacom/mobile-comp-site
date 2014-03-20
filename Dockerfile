FROM phusion/passenger-customizable:0.9.8

# Enable nginx
RUN rm -f /etc/service/nginx/down

# Add website configuration
RUN rm -rf /etc/nginx/sites-enabled/default
ADD nginx.config /etc/nginx/sites-enabled/web

# Add website into default location
ADD web /var/web
