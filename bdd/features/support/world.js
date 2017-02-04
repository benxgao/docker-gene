const World = function() {
console.log('world');
  // const internals = {};
  //
  // internals.client = new RestClient({
  //   baseUrl: `http://app:3000`
  // });
  //
  // this.httpGet = (resourcePath, authToken, options) => {
  //   const getOpts = Object.assign({
  //     headers: {
  //       Authorization: `Bearer ${authToken}`
  //     }
  //   }, options);
  //
  //   return internals.client.get(resourcePath, getOpts);
  // };
};

module.exports = function() {
  this.World = World;
};
