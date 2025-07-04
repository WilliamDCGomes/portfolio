'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"manifest.json": "9a8e11a039265685bddf5bc643d094b0",
"web_icon.png": "022293c47c01c0d19f81b457c8b4ab07",
"main.dart.js": "41049e51261bac042c501a532e7310e5",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"index.html": "87870f17bbda767b25ec3adef297577b",
"/": "87870f17bbda767b25ec3adef297577b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/AssetManifest.bin.json": "18ed54a50de99f83fbc31e479d55dfc0",
"assets/AssetManifest.bin": "62d9a1f7695a67ed55627a59461aa0ec",
"assets/NOTICES": "ba9c6ecd6c8901727cfb2ec9b0150df7",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "3b055e834fe2d96213e2e6c57659ba9c",
"assets/lib/web/assets/images/logo.png": "ac463fb10e9797e67409de8a01155ca1",
"assets/lib/web/assets/images/linkedin_icon.png": "d604727cedcd27fcc981ffdb1f318a66",
"assets/lib/web/assets/images/home_background_top.png": "b1fefdfc21ed2fff853607b654937442",
"assets/lib/web/assets/images/home_background_bottom.png": "43874e541d0627c9a756a403a31494bb",
"assets/lib/web/assets/images/power_automate_icon.png": "9a495666429d60d7816fbbb5332b7443",
"assets/lib/web/assets/images/c%2523_icon.png": "63d8627ae0959bfe09c8a4ad38a033ca",
"assets/lib/web/assets/images/resume_icon.png": "4bcf421e69f3326f5980d461150915b5",
"assets/lib/web/assets/images/angular_icon.png": "d3f5de12e507f289ac04ec5f4352d0ae",
"assets/lib/web/assets/images/tiktok_icon.png": "60b5286655e210ec81d7a3c80e8064d7",
"assets/lib/web/assets/images/gmail_icon.png": "f00b334e60b029b6c9aec7d099484649",
"assets/lib/web/assets/images/firebase_icon.png": "150d6459769c372650856932d8ff1509",
"assets/lib/web/assets/images/mysql_icon.png": "30612f2d72adda4093ce215bd0102f64",
"assets/lib/web/assets/images/xamarin_forms_icon.png": "ed2e25d6d558471024970e5f2701c63a",
"assets/lib/web/assets/images/sqlite_icon.png": "8fd43853a760930323644dded8a4919c",
"assets/lib/web/assets/images/instagram_icon.png": "5c570427ee23f69853d28aec805eee79",
"assets/lib/web/assets/images/flutter_icon.png": "0ee7b2475a1b7d3fa4a1d811b97321c2",
"assets/lib/web/assets/images/home_background_right.png": "5d8bc637df5f4e7c305564794aa75c93",
"assets/lib/web/assets/images/js_icon.png": "2231cc44d167b7451e60094b7c5ffb40",
"assets/lib/web/assets/images/maui_icon.png": "6f5a7cfa74ee483a07c8d320b44cb9b0",
"assets/lib/web/assets/images/dart_icon.png": "b73081b39828581f204c481373c77e4e",
"assets/lib/web/assets/images/html_icon.png": "4c3024d9faab1fd56beb5cc54f8299d6",
"assets/lib/web/assets/images/css_icon.png": "77861a81be5af472837277d0c51dd4ec",
"assets/lib/web/assets/images/ts_icon.png": "fe00f3fa1c665661929542c3a97866f1",
"assets/lib/web/assets/images/github_icon.png": "3d4c7482f267f5accbb7461766f3f790",
"assets/lib/web/assets/images/swift_icon.png": "5482752250874e548cf13918d3371acf",
"assets/lib/web/assets/images/image_profile.jpg": "4d0181695c99ab49317fe727fe764941",
"assets/lib/web/assets/images/postgresql_icon.png": "ad6d4e2c3c5476ddd86132495815649a",
"assets/lib/web/assets/images/azure_icon.png": "5ba7cc955d9b5e32daae978a90cbece9",
"assets/lib/web/assets/images/aws_icon.png": "7261e390cc8b65837bad6854e0cae0d8",
"assets/lib/web/assets/images/brazil_flag.png": "a7fef007321c8398394424fcf564e1f9",
"assets/lib/web/assets/images/youtube_icon.png": "ca6d67e60f758d352745329b283e8f32",
"assets/lib/web/assets/images/sql_server_icon.png": "cbc01d74824012ef14259d6d7909c21a",
"assets/lib/app/assets/json/error.json": "cacd4175acf6713550dd3487423fa5ed",
"assets/lib/app/assets/json/loading.json": "84b04082bc2599b808558585ee2dad87",
"assets/lib/app/assets/json/success_animation.json": "770ea5b580d9fedb5175a930a139465e",
"assets/lib/app/assets/images/app_icon.png": "772cadf1013fe4c3f5e6d33c7c726b9c",
"assets/lib/app/assets/images/splash_screen.png": "d09189069d0b59469b24c90cdcf6df29",
"assets/lib/app/assets/images/app_icon_transparent.png": "022293c47c01c0d19f81b457c8b4ab07",
"assets/fonts/MaterialIcons-Regular.otf": "a129af3236b2af272bc3231c54874804",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"flutter_bootstrap.js": "9aab6efe25c8e8ffdccac3a78b9db5f4",
"version.json": "46d24ca199e2d2273af147fc86ab4b2c"};
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
