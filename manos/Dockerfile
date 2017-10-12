FROM tomcat:latest
MAINTAINER Charles T. Betz

ENV ANT_VERSION=apache-ant-1.9.9
ENV ANT_MIRROR=http://apache.mirrors.hoobly.com//ant/binaries/

RUN mkdir -p /opt/  \
    && wget -O /opt/$ANT_VERSION-bin.tar.gz $ANT_MIRROR$ANT_VERSION-bin.tar.gz

RUN tar -xzf /opt/$ANT_VERSION-bin.tar.gz -C /opt \
    && rm -f /opt/$ANT_VERSION-bin.tar.gz \
    && echo export ANT_HOME=/opt/$ANT_VERSION > /etc/profile.d/ant.sh \
    && echo export ANT_HOME=/usr/share/$ANT_VERSION >> ~/.bashrc  \
    && mkdir -p /home/jenkins \
    && echo export ANT_HOME=/usr/share/$ANT_VERSION >> /home/jenkins/.bashrc \
    && ln -s /opt/apache-ant-1.9.9/bin/ant /usr/local/bin/ant

