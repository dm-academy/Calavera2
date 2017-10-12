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



 #   remote_file "/usr/lib/jvm/junit-4.12.jar" do
  #      source 'http://search.maven.org/remotecontent?filepath=junit/junit/4.12/junit-4.12.jar'
  #  end
  #  
  #  remote_file "/usr/lib/jvm/hamcrest-core-1.3.jar" do
  #      source 'http://search.maven.org/remotecontent?filepath=org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar'
  #  end
    
 #   link "/usr/bin/junit-4.12.jar" do
 #     to "/usr/lib/jvm/junit-4.12.jar"
 #   end
    
 #   link "/usr/bin/hamcrest-core-1.3.jar" do
 #     to "/usr/lib/jvm/hamcrest-core-1.3.jar"
 #   end
