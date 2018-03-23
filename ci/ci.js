exports.responseLog = (res) => {
  console.log(`${res.responseUrl} => ${res.statusCode}: ${res.statusMessage}`)
}
