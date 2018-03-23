TOKEN=$GIT_SQLPP_TOKEN
OWNER=hirauchi0713
REPO=sqlpp
SHA=$1

curl -H "Authorization: token $TOKEN" \
  https://api.github.com/repos/$OWNER/$REPO/statuses/$SHA \
  -X POST -d @./ci/status.json
