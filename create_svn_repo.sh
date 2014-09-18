#! /bin/bash

svnadmin create /subversion/svnrepos/$1

svn mkdir --parents file:///subversion/svnrepos/$1/{trunk,branches,tags} -m "Initial creation of repository directories."

chown -R apache:apache /subversion/svnrepos/$1

echo The SVN repository named $1 has been created.
