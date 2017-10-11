export JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
export JRE_HOME=$JAVA_HOME/jre
export CLASS_PATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin

export OPENGROK_TOMCAT_BASE=/opengrok/packs/apache-tomcat
export OPENGROK_VERBOSE=true
export OPENGROK_INSTANCE_BASE=/opengrok/index-data


alias deploy="/opengrok/packs/apache-tomcat/bin/startup.sh \
&& /opengrok/packs/opengrok/bin/OpenGrok deploy"

alias index="/opengrok/packs/opengrok/bin/OpenGrok index /projects"

