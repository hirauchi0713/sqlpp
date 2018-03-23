TOKEN=$GIT_SQLPP_TOKEN
OWNER=hirauchi0713
REPO=sqlpp
BRANCH=master

curl -H "Accept: application/vnd.github.loki-preview+json" \
  -H "Authorization: token $TOKEN" \
  https://api.github.com/repos/$OWNER/$REPO/branches/$BRANCH/protection \
  -X PUT -d @./ci/protect.json
