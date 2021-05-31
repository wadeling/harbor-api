#!/bin/bash

#username=admin
#password=Harbor12345

harborurl="http://192.168.208.195:80/"

#api v2
apiversion="api/v2.0/"

#api v1
#apiversion="api"

# get projects
#requrl="${harborurl}${apiversion}projects"
#echo $requrl
#curl -v --user ${username}:${password} $requrl 

# get statistics,only get number
#requrl="${harborurl}${apiversion}statistics"
#curl -v --user ${username}:${password} $requrl 

# depreted get repositories
#requrl="${harborurl}${apiversion}repositories"
#curl -v --user ${username}:${password} $requrl 


# get project repos
#projectname=test
#requrl="${harborurl}${apiversion}projects/{$projectname}/repositories"
#curl -v --user ${username}:${password} $requrl 

# get project repo info
#projectname=test
#reponame=test
#requrl="${harborurl}${apiversion}projects/{$projectname}/repositories/${reponame}"
#curl -v -k --user ${username}:${password} $requrl 

#get repo artifacts(tags,digest)
projectname=test
reponame=test
requrl="${harborurl}${apiversion}projects/{$projectname}/repositories/${reponame}/artifacts"
curl -v -k --user ${username}:${password} $requrl 

#get image info 
#projectname=test
#reponame=test
#ref can be tag or image digest
#ref=tom
#requrl="${harborurl}${apiversion}projects/{$projectname}/repositories/${reponame}/artifacts/${ref}"
#curl -v --user ${username}:${password} $requrl 


#api v1 test
# get tags
#reponame="library/nginx"
#requrl="${harborurl}${apiversion}/repositories/${reponame}/tags?detail=true"
#curl -v -k --user ${username}:${password} $requrl 

