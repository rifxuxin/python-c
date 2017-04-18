FROM hub.c.163.com/public/centos:6.5
MAINTAINER db@xx
RUN rm -rf /root/test1/
RUN mkdir /root/test1/
RUN mkdir /root/test1/test2/
COPY . /root/test1/
RUN python /root/test1/test.py
ENTRYPOINT /usr/sbin/sshd -D
