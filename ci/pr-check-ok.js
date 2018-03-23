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

console.log(list_commits)
console.log(statuses)

const args = {
 headers: {
   "User-Agent": "node-rest-client",
   "Authorization": `token ${TOKEN}`
 }
}

client.get(list_commits, args, (json, response) => {
  console.log(json.toString('utf8'))
  console.log(json)
  json.forEach(commits => {
    console.log(commits.sha)
    const url = statuses+commits.sha
    console.log(url)
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
    console.log(postargs)
    client.post(url, postargs, (data, response) => {
      console.log(data)
    })
  })
})
