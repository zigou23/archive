//1
addEventListener('fetch', event => {
  const url = new URL(event.request.url);
  // host地址
  url.hostname = 'aindex.herokuapp.com';
  const request = new Request(url, event.request);
  event.respondWith(fetch(request));
});


