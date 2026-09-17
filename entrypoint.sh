#!/bin/sh


START=$(date "+%Y-%m-%dT%H:%M:%S+08:00")


cat > /usr/share/nginx/html/version.json <<EOF
{
 "commit":"${BUILD_HASH}",
 "start_time":"${START}"
}
EOF



touch /tmp/count
chmod 666 /tmp/count


nginx -g "daemon off;"
