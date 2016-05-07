FROM alpine:3.3

MAINTAINER Thomas Zoratto <thomas.zoratto@gmail.com>

RUN apk add --no-cache python py-pip ca-certificates && \
    pip install s3cmd && \
    apk del py-pip

RUN { \
		echo '[default]'; \
		echo 'access_key=$AWS_ACCESS_KEY'; \
		echo 'secret_key=$AWS_SECRET_KEY'; \
                echo 'use_https=true'; \
	} > /root/.s3cfg

WORKDIR /root/s3cmd

ENTRYPOINT ["s3cmd"]
