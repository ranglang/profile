FROM nginx:1.13.3-alpine

## Copy our default nginx config
## Copy our default nginx config
#COPY nginx/default.conf /etc/nginx/conf.d/
#COPY nginx/full_chain.pem /etc/nginx/conf.d/
#COPY nginx/private.key /etc/nginx/conf.d/

## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

## From 'builder' stage copy over the artifacts in dist folder to default nginx public folder
COPY . /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
