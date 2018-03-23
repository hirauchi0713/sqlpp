//
// 指定されたプルリクにcheck okを出す
//

require('dotenv').config()

const path = require('path')

const Client = require('node-rest-client').Client
const client = new Client()

const OWNER  = process.env.OWNER
const REPO   = process.env.REPO
const TOKEN  = process.env.GIT_SQLPP_TOKEN
const NUMBER = process.argv[2]

const list_commits = `https://api.github.com/repos/${OWNER}/${REPO}/pulls/${NUMBER}/commits`
const statuses = `https://api.github.com/repos/${OWNER}/${REPO}/statuses/`

const args = {
 headers: {
   "User-Agent": "node-rest-client",
   "Authorization": `token ${TOKEN}`
 }
}

const postargs = {
  headers: {
    "User-Agent": "node-rest-client",
    "Content-Type": "application/json",
    "Authorization": `token ${TOKEN}`
  },
  data : {
    "state": "success",
    "context": "check"
  }
}

function responseLog(res) {
  console.log(`${res.responseUrl} => ${res.statusCode}: ${res.statusMessage}`)
}

client.get(list_commits, args, (json, res) => {
  responseLog(res)
  json.forEach(commits => {
    const url = statuses+commits.sha
    client.post(url, postargs, (data, res) => {
      responseLog(res)
    })
  })
})
