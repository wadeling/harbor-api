#!/bin/bash

username=admin
password=Harbor12345

harborurl="http://192.168.208.25:80/"

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
#projectname=test
#reponame=test
#requrl="${harborurl}${apiversion}projects/{$projectname}/repositories/${reponame}/artifacts"
#curl -v -k --user ${username}:${password} $requrl 

#get image info 
#projectname=test
#reponame=test
#ref can be tag or image digest
#ref=tom
#requrl="${harborurl}${apiversion}projects/{$projectname}/repositories/${reponame}/artifacts/${ref}"
#curl -v --user ${username}:${password} $requrl 

### use query string ###
### very userful ! ###
### operation={create delete}, op_time=[2021-06-03~2021-06-30] , must urlencode query param ####
#projectname=test
#reponame=test
#requrl="${harborurl}${apiversion}audit-log?operation=%7Bcreate%20delete%7D,op_time=%5B2021-06-03%7E2021-06-30%5D"
#curl -v -L -u ${username}:${password} $requrl


#############  create project ###########
bodyfile="postdata"
requrl="${harborurl}${apiversion}projects"
curl -v -X POST -u ${username}:${password} -H "Content-Type: application/json" -d @./postdata.json $requrl


####### api v1 test ######
# get tags
#reponame="library/nginx"
#requrl="${harborurl}${apiversion}/repositories/${reponame}/tags?detail=true"
#curl -v -k --user ${username}:${password} $requrl 

# get projects
#requrl="${harborurl}${apiversion}/projects"
#curl -v -k --user ${username}:${password} $requrl 

# get project access logs
#projectid=1
#query="?begin_timestamp=1622649600&operation=delete"
#requrl="${harborurl}${apiversion}/projects/${projectid}/logs${query}"
#curl -v -k --user ${username}:${password} $requrl 

