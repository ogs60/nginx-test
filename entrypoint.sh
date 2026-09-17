#!/bin/bash


START=$(date "+%Y-%m-%d %H:%M:%S")


cat > /usr/share/nginx/html/version.json <<EOF
{
 "commit":"${BUILD_HASH}",
 "start_time":"${START}"
}
EOF



touch /tmp/count


nginx -g "daemon off;"
