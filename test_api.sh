#!/bin/bash

username=wade
password=xxx

harborurl="http://xxx.xxx.xxx.xxx:80/"
apiversion="api/v2.0/"

# get projects
#requrl="${harborurl}${apiversion}projects"
#echo $requrl
#curl -v --user ${username}:${password} $requrl 

# get statistics,only get number
#requrl="${harborurl}${apiversion}statistics"
#curl -v --user ${username}:${password} $requrl 

# get project repos
#projectname=test
#requrl="${harborurl}${apiversion}projects/{$projectname}/repositories"
#curl -v --user ${username}:${password} $requrl 

# get project repo info
#projectname=test
#reponame=test
#requrl="${harborurl}${apiversion}projects/{$projectname}/repositories/${reponame}"
#curl -v --user ${username}:${password} $requrl 

#get repo artifacts(tags,digest)
#projectname=test
#reponame=test
#requrl="${harborurl}${apiversion}projects/{$projectname}/repositories/${reponame}/artifacts"
#curl -v --user ${username}:${password} $requrl 

#get image info 
projectname=test
reponame=test
#ref can be tag or image digest
ref=tom
requrl="${harborurl}${apiversion}projects/{$projectname}/repositories/${reponame}/artifacts/${ref}"
curl -v --user ${username}:${password} $requrl 


