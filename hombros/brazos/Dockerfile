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
 && apt-get install -y tree default-jdk

#RUN add user calavera
#RUN groupadd git \
# && groupadd calavera \
# && useradd -b "/home/" -m -g git calavera
RUN useradd -b "/home/" -m calavera

# configure SSH

RUN mkdir -p /home/calavera/.ssh/
COPY files/id* /home/calavera/.ssh/

RUN chown -R calavera:calavera /home/calavera/ \
&& chmod -R 644 /home/calavera/.ssh

RUN cat /home/calavera/.ssh/id_rsa.pub >> /home/calavera/.ssh/authorized_keys \
&& chmod 600 /home/calavera/.ssh/id_rsa

# Move app

RUN mkdir -p /home/calavera/hijo/src/main/config \
 && mkdir -p /home/calavera/hijo/src/main/java/biz/calavera \
 && mkdir -p /home/calavera/hijo/src/test/java/biz/calavera \
 && mkdir -p /home/calavera/hijo/target/biz/calavera

#COPY files/INTERNAL_gitignore .gitignore
COPY files/build.xml  /home/calavera/hijo/build.xml
COPY files/web.xml /home/calavera/hijo/src/main/config/web.xml
COPY files/Class1.java /home/calavera/hijo/src/main/java/biz/calavera/Class1.java
COPY files/MainServlet.java /home/calavera/hijo/src/main/java/biz/calavera/MainServlet.java
COPY files/TestClass1.java /home/calavera/hijo/src/test/java/biz/calavera/TestClass1.java

RUN chown -R calavera:calavera /home/calavera/hijo/ \
 && chown -R calavera:calavera /usr/local/tomcat

WORKDIR  /home/calavera/hijo

RUN ant

USER calavera

#RUN git config --global user.email "char@calavera.biz" \
# && git config --global user.name "Charles Betz" \
# && git init . \
# && git add . -A \
# && git commit -m "initial commit"

# essential that cerebro is up; does this move to docker-compose??

#RUN  ssh-keyscan 203.0.113.1 >> ~/.ssh/known_hosts \
# && git remote add origin ssh://203.0.113.1/home/hijo.git \
# && git push origin --mirror \
#  && git push origin master


USER root
