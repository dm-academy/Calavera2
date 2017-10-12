FROM tomcat:latest
MAINTAINER Charles T. Betz


# install Ant

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

# install JUnit

RUN wget -O /usr/lib/jvm/junit-4.12.jar http://search.maven.org/remotecontent?filepath=junit/junit/4.12/junit-4.12.jar \
    && wget -O /usr/lib/jvm/hamcrest-core-1.3.jar \
          http://search.maven.org/remotecontent?filepath=org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar  \
    && ln -s /usr/lib/jvm/junit-4.12.jar /usr/bin/junit-4.12.jar \
    && ln -s /usr/lib/jvm/hamcrest-core-1.3.jar /usr/bin/hamcrest-core-1.3.jar

RUN apt-get update \
 && apt-get install -y git tree

RUN groupadd git \
 && groupadd hijo \
 && useradd -b "/home/" -m -g git hijo

RUN mkdir -p /home/hijo/src/main/config \
 && mkdir -p /home/hijo/src/main/java/biz/calavera \
 && mkdir -p /home/hijo/src/test/java/biz/calavera \
 && mkdir -p /home/hijo/target/biz/calavera

COPY files/INTERNAL_gitignore /home/hijo/.gitignore
COPY files/build.xml  /home/hijo/build.xml
COPY files/web.xml /home/hijo/src/main/config/web.xml
COPY files/Class1.java /home/hijo/src/main/java/biz/calavera/Class1.java
COPY files/MainServlet.java /home/hijo/src/main/java/biz/calavera/MainServlet.java
COPY files/TestClass1.java /home/hijo/src/test/java/biz/calavera/TestClass1.java

RUN chown -R hijo:git /home/hijo/ \
 && chown -R hijo:hijo /usr/local/tomcat
