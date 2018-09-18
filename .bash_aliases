# User specific environment and startup programs

# HOME = home/nhoangphuc
# branch9607 = /home/nhoangphuc/axs/branch9607

axs=$HOME/axs
softs=$axs/softs
serverIP=192.168.95.212

# SOFTS AND OPTIONS

safecommits=$softs/safecommits
SVN_HOME=$softs/csvn
JAVA_HOME=$softs/openjdk8
JAVA_OPTS="-Djava.net.preferIPv4Stack=true"
NMHN_JBOSS_MEMORY_OPTS='-Xmx2048m -XX:MaxPermSize=1024m'
MYSQL_HOME=$softs/mariadb10
MY_BASEDIR_VERSION=$MYSQL_HOME
MYSQL_DATA_DIR=$axs/data/mysql-data_9607
MAVEN_HOME=$softs/maven339
MAVEN_OPTS='-Xmx4096m -XX:MaxPermSize=1024m '
MAVEN_REPO=$HOME/.m2/repository

# DEFINE IP ADDRESS

NMHN_USER_DB_IPADDR=$serverIP
NMHN_USER_IPADDR=$serverIP
NMHN_USER_MULTICAST_IPADDR=233.1.95.51
SSH_USER_NAME=nhoangphuc
SSH_KEY_PATH=$HOME/.ssh/id_rsa
AMSSFTPDB_USER=nhoangphuc
AMSSFTPDB_USER_HOME_DIR=$HOME/
TMA=http://192.168.95.80/svn/axs
AVARTAR=http://tiger.in.alcatel-lucent.com/svn/axs

# DEFINE FOLDER LOCATION

TRUNK_DIR=/home/nhoangphuc/branch9607
ROOT=$TRUNK_DIR
ams=$TRUNK_DIR

JBOSS_HOME=$TRUNK_DIR/basic.app/package/target/ams-9.6.07-SNAPSHOT/server/wildfly
EPG_JBOSS_HOME=$JBOSS_HOME
DEPLOY_DIR=$JBOSS_HOME/standalone/deployments

AMS_HOME=$HOME/axs/ams_home
AMS_VERSION=ams-trunk-SNAPSHOT
AMS_EXTERNAL_SHAREDDATA_HOME=$AMS_HOME/shared
AMS_SHAREDDATA_HOME=$AMS_EXTERNAL_SHAREDDATA_HOME/$AMS_VERSION
AMS_EXTERNAL_LOCALDATA_HOME=$AMS_HOME/local/
AMS_LOCALDATA_HOME=$AMS_EXTERNAL_LOCALDATA_HOME/$AMS_VERSION

server=$TRUNK_DIR/basic.app/package
apcroot=$TRUNK_DIR/apc.app
apcplug=$TRUNK_DIR/apc.app/plugins
apccomponent=$TRUNK_DIR/apc.app/apc.app.fwk/components
apcserver=$TRUNK_DIR/apc.app/apc.app.fwk/server/jbossdeploy
spfeapp=$TRUNK_DIR/spfe.app
spfefwk=$TRUNK_DIR/spfe.app/spfe.app.fwk
spfeplug=$TRUNK_DIR/spfe.app/plugins
spfeserver=$TRUNK_DIR/spfe.app/spfe.app.fwk/server
spfeclient=$TRUNK_DIR/spfe.app/spfe.app.fwk/client/plugins/com.alcatel.axs.gui.spfe/
gsipapp=$TRUNK_DIR/gsip.app
gsipplug=$TRUNK_DIR/gsip.app/plugins

DEPLOY_SCRIPT_PATH=$HOME/axs/scripts/build/axs_deploy
BUILD_SCRIPT_PATH=$HOME/axs/scripts/build
SERVER_SCRIPTS_PATH=$HOME/axs/scripts/server
SVN_SCRIPT_PATH=$HOME/axs/scripts/svn
MYSQL_SCRIPT_PATH=$HOME/axs/scripts/mysql
UTIL_SCRIPT_PATH=$HOME/axs/scripts/util

# ALIAS SECTION

alias trunk="cd $TRUNK_DIR"
alias apcplug="cd $apcplug"
alias apcserver="cd $apcserver"
alias safecommit="cd $safecommits && mvn exec:java"

# EXPORT SECTION
export axs safecommits SVN_HOME JAVA_HOME JAVA_OPTS NMHN_JBOSS_MEMORY_OPTS MYSQL_HOME MY_BASEDIR_VERSION MYSQL_DATA_DIR MAVEN_HOME MAVEN_OPTS MAVEN_REPO
export NMHN_USER_DB_IPADDR NMHN_USER_IPADDR NMHN_USER_MULTICAST_IPADDR SSH_USER_NAME SSH_KEY_PATH AMSSFTPDB_USER AMSSFTPDB_USER_HOME_DIR TMA AVARTAR
export TRUNK_DIR ROOT ams JBOSS_HOME EPG_JBOSS_HOME DEPLOY_DIR AMS_HOME AMS_VERSION AMS_EXTERNAL_SHAREDDATA_HOME AMS_SHAREDDATA_HOME AMS_EXTERNAL_LOCALDATA_HOME AMS_LOCALDATA_HOME
export server apcroot apcplug apccomponent apcserver spfeapp spfefwk spfeplug spfeserver spfeclient gsipapp gsipplug
export DEPLOY_SCRIPT_PATH BUILD_SCRIPT_PATH SERVER_SCRIPTS_PATH SVN_SCRIPT_PATH MYSQL_SCRIPT_PATH UTIL_SCRIPT_PATH
export PATH=$SVN_HOME/bin:$JAVA_HOME/bin:$MYSQL_HOME/bin:$MYSQL_HOME/scripts:$MAVEN_HOME/bin:~/:$PATH
export PATH=$DEPLOY_SCRIPT_PATH:$BUILD_SCRIPT_PATH:$SERVER_SCRIPTS_PATH:$SVN_SCRIPT_PATH:$MYSQL_SCRIPT_PATH:$UTIL_SCRIPT_PATH:$PATH
export LD_LIBRARY_PATH=$JAVA_HOME/jre/lib/amd64/:$JAVA_HOME/lib/amd64/jli:$SVN_HOME/lib:$LD_LIBRARY_PATH
