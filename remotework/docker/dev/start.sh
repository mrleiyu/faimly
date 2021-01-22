#!/bin/sh
echo "start"
nginx
php-fpm -O
echo "end"
echo  '0.0.0.0 s.w7.cc' >> /etc/hosts
echo  '0.0.0.0 order.w7.cc' >> /etc/hosts
echo  '0.0.0.0 dev.w7.cc' >> /etc/hosts
echo  '0.0.0.0 user.w7.cc' >> /etc/hosts
echo  '0.0.0.0 wo.w7.cc' >> /etc/hosts
tail -f /dev/null

