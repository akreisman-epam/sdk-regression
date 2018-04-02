FROM centos

ADD lib /app/lib
ADD curl-templates /app/curl-templates
COPY *.xml /app/

RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm \
    && yum install -y epel-release \
    &&  yum install -y --nogpgcheck java python36u php nodejs ant git wget which \
    && wget -P /usr/local http://www-eu.apache.org/dist/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.tar.gz \
    && cd /usr/local \
    && tar xzf apache-maven-3.5.3-bin.tar.gz \
    && ln -s apache-maven-3.5.3  maven 

ENV M2_HOME=/usr/local/maven
ENV PATH=${M2_HOME}/bin:${PATH}
    
