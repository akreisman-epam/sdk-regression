FROM centos

ADD lib /app/lib
ADD curl-templates /app/curl-templates
ADD layer7 /app/layer7
COPY *.xml /app/

RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm \
    && yum install -y mc htop python-pip\
    && yum install -y epel-release \
    && rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm \
    && yum install -y --nogpgcheck java python36u php56w php56w-opcache composer nodejs ant git wget which \
    && wget -P /usr/local http://www-eu.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz \
    && cd /usr/local \
    && tar xzf apache-maven-3.5.4-bin.tar.gz \
    && ln -s apache-maven-3.5.4  maven

ENV M2_HOME=/usr/local/maven
ENV PATH=${M2_HOME}/bin:${PATH}
    
