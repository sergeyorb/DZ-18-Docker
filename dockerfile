FROM alpine

RUN apk add --update-cache && apk add nginx
#EXPOSE 80
CMD ["nginx","-g","daemon off;"]
