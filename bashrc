export JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
export JRE_HOME=$JAVA_HOME/jre
export CLASS_PATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin

export OPENGROK_TOMCAT_BASE=/opengrok/packs/apache-tomcat-8.5.23
export OPENGROK_VERBOSE=true
export OPENGROK_INSTANCE_BASE=/opengrok/index-data


alias deploy="/opengrok/packs/apache-tomcat-8.5.23/bin/startup.sh \
&& /opengrok/packs/opengrok-1.1-rc15/bin/OpenGrok deploy"

alias index="/opengrok/packs/opengrok-1.1-rc15/bin/OpenGrok index /projects"

