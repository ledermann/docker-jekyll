# Build using preinstalled dependencies
FROM ledermann/jekyll-base AS Builder
RUN bundle exec jekyll build

# Deploy with Nginx
FROM nginx:stable-alpine
LABEL maintainer="georg@ledermann.dev"
COPY _nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=Builder /app/_site /usr/share/nginx/html
RUN nginx -t
