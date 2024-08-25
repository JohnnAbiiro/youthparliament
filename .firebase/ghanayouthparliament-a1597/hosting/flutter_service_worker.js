'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "652ad3eb3397265d88f0b6b1161861cb",
"version.json": "013e6a9574bf18cef4002e1501b28c67",
"index.html": "f72bc7d417467ebb851e95bbeb4575ae",
"/": "f72bc7d417467ebb851e95bbeb4575ae",
"main.dart.js": "acac0b069da2823d577cf7dea066c5d0",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "d8afa2eca678ed661ec37229ffbde346",
"assets/images/committee.jpg": "5b8acfe46469391ef1f4e56892fc65db",
"assets/images/earth.jpeg": "e5af3f9a1fa3bb1f18c18aaf27b674d8",
"assets/images/adu.jpg": "6a788725e1c02233e56a4e564fe87abc",
"assets/images/bawumia.jpg": "308c37bcedbfcf575942daae03179e36",
"assets/images/earth2.jpeg": "e402dbc4897b838053b8f49f2f3692a4",
"assets/images/cpp.png": "7a7761d5feea93391d33dcb21c9e4261",
"assets/images/book3.jpg": "5e217b93a5592c546032d2b73b816466",
"assets/images/book2.jpg": "cf86c6e9794ce010e83975e5e5b0fb6c",
"assets/images/others.png": "50dcae8836621084720e58bba93a04f9",
"assets/images/DIPLOMA%2520CERTIFICATE.pdf": "d3be5c61e9f58c7fe3e04cdce6eac058",
"assets/images/book1.jpg": "64a3404ebdd0f02c67b1e0cc684ec365",
"assets/images/book4.jpg": "1019c2680f6e315a29a2e24fad04cb7f",
"assets/images/background.jpeg": "ee7f2b79d87698fa4b1f4a548b66e43c",
"assets/images/alex.jpg": "4f1d919347dc9013cc075400fa157987",
"assets/images/sherigu.jpg": "94c901ae6002519a70daf6b484347bdb",
"assets/images/npp.png": "e12506284228b21ff52939b468ed7d32",
"assets/images/ndc.png": "c68ca05be14c65f827bc9790390a868a",
"assets/images/SPECIMEN%2520SIGNATURES%2520APPROVED%2520LETTER.pdf": "fa938f863badd48b0ffb4bacccc84dfa",
"assets/images/ylplogo.png": "5c2e6f0aa4d5437712f9527fce46fc68",
"assets/images/forson.jpg": "e4a032d774e00c3cafba8cf3e454703e",
"assets/images/amin.jpg": "2742db9504046266b1c7cc7c46425eb2",
"assets/images/foreign.jpg": "4c48194e0fc682bd80f6c3c16e17dceb",
"assets/images/nana.jpeg": "1cfc8fa80b7a1cf9380831f04571e543",
"assets/images/google.png": "d9fb1f9493f9436c75f24f6ed7a6aad5",
"assets/images/earth1.jpeg": "e2ec1e9512ee39ae36358f3e985ad87a",
"assets/images/DERRICK%2520ADONGO.jpg": "b73ba26396ec4b729973b174708de787",
"assets/images/johnny.jpg": "df62b67ff6a5f61ff094ea0498c6b6f0",
"assets/images/johnny.png": "029fbc153602c2cd0b9b12389bcce74e",
"assets/images/ylpspeaker.jpg": "7f025470d712a6b33e0999ead5c77a12",
"assets/images/bagbin.jpg": "90c902a70e25531bf4aa2317fba060b7",
"assets/AssetManifest.json": "c779a7c1a812ecf47d1c6a8e6f28c4ee",
"assets/NOTICES": "919ff94182d73e3dcd4d83feefdc60a1",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/AssetManifest.bin.json": "c3ee5b148aacaf10d918419b9ee8d700",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "cef772faa8130d859e7e36ddf1215a63",
"assets/fonts/MaterialIcons-Regular.otf": "1948fa208340a0ba473cc4382910c296",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
