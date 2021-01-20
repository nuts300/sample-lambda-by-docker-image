require('log-timestamp');

const sleep = msec => new Promise(resolve => setTimeout(resolve, msec));

exports.handler =  async function(event) {
  console.log('start');
  return {
    message: 'this is func-normal'
  }
}