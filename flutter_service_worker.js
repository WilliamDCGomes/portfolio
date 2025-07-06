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
"main.dart.js": "d89f97d8ae0cbc66b1744666cb625d1c",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"index.html": "87870f17bbda767b25ec3adef297577b",
"/": "87870f17bbda767b25ec3adef297577b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/AssetManifest.bin.json": "a346ae09c260ef8698a1a692f9dc2ada",
"assets/AssetManifest.bin": "246acf099979d305bcddb14a7f46ea31",
"assets/NOTICES": "f3a2682a9dba1b4495067588bb3fa38e",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "de3d3850f5d5fd0da4b80116f8c492a9",
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
"assets/lib/web/assets/images/iphone_screen.png": "8f5f62c1d95a16e2e3dae1f1bb737c9d",
"assets/lib/web/assets/images/firebase_icon.png": "150d6459769c372650856932d8ff1509",
"assets/lib/web/assets/images/mysql_icon.png": "30612f2d72adda4093ce215bd0102f64",
"assets/lib/web/assets/images/xamarin_forms_icon.png": "ed2e25d6d558471024970e5f2701c63a",
"assets/lib/web/assets/images/sqlite_icon.png": "8fd43853a760930323644dded8a4919c",
"assets/lib/web/assets/images/instagram_icon.png": "5c570427ee23f69853d28aec805eee79",
"assets/lib/web/assets/images/flutter_icon.png": "0ee7b2475a1b7d3fa4a1d811b97321c2",
"assets/lib/web/assets/images/home_background_right.png": "5d8bc637df5f4e7c305564794aa75c93",
"assets/lib/web/assets/images/js_icon.png": "2231cc44d167b7451e60094b7c5ffb40",
"assets/lib/web/assets/images/maui_icon.png": "6f5a7cfa74ee483a07c8d320b44cb9b0",
"assets/lib/web/assets/images/samsung_screen.png": "f54802a9e8d15f7a109b26203b6b59dd",
"assets/lib/web/assets/images/dart_icon.png": "b73081b39828581f204c481373c77e4e",
"assets/lib/web/assets/images/html_icon.png": "4c3024d9faab1fd56beb5cc54f8299d6",
"assets/lib/web/assets/images/css_icon.png": "77861a81be5af472837277d0c51dd4ec",
"assets/lib/web/assets/images/ts_icon.png": "fe00f3fa1c665661929542c3a97866f1",
"assets/lib/web/assets/images/github_icon.png": "3d4c7482f267f5accbb7461766f3f790",
"assets/lib/web/assets/images/swift_icon.png": "5482752250874e548cf13918d3371acf",
"assets/lib/web/assets/images/image_profile.jpg": "4d0181695c99ab49317fe727fe764941",
"assets/lib/web/assets/images/projects/smvc/7.png": "163dff9e5ab91e6a3cbc8c54f54e230a",
"assets/lib/web/assets/images/projects/smvc/5.png": "4ad607dc2daf4045080abda749c81d2f",
"assets/lib/web/assets/images/projects/smvc/8.png": "6f0563d584516f1b098938e453026b60",
"assets/lib/web/assets/images/projects/smvc/3.png": "3dbdc72a6060f5ec451180f65fe298e6",
"assets/lib/web/assets/images/projects/smvc/6.png": "eaca05dfaeeda14ef5a09b8d9d6f67db",
"assets/lib/web/assets/images/projects/smvc/4.png": "bbe96be05e5f48c062a039690c925288",
"assets/lib/web/assets/images/projects/smvc/1.png": "74f93d603449ee7892fc4cee99de5dc3",
"assets/lib/web/assets/images/projects/smvc/9.png": "a4a1c8bac2a39d037fcee054323c0aee",
"assets/lib/web/assets/images/projects/smvc/2.png": "eb22519736853fa35ab820022fa62ac5",
"assets/lib/web/assets/images/projects/japamix/3.png": "585c1f3573fb0330a78ec30d1a2f5a79",
"assets/lib/web/assets/images/projects/japamix/4.png": "a5314d392a1affae0a29e627e7677df9",
"assets/lib/web/assets/images/projects/japamix/1.png": "04158640a28593b14423ab1b3e37f5db",
"assets/lib/web/assets/images/projects/japamix/2.png": "03ed7a0b9cdc4d3940d11d4ebeee0c42",
"assets/lib/web/assets/images/projects/pce/7.png": "d9baff8f3112b97808b0fa83b8ceef52",
"assets/lib/web/assets/images/projects/pce/5.png": "331ea5134a4f99e970ef22647dacab26",
"assets/lib/web/assets/images/projects/pce/8.png": "c4857733a1ab4b717e0f7f06f8c0774a",
"assets/lib/web/assets/images/projects/pce/3.png": "3b60cc9df97f6ad3a918d402884848e1",
"assets/lib/web/assets/images/projects/pce/6.png": "df56acc278e098267634f68107b80363",
"assets/lib/web/assets/images/projects/pce/4.png": "2504aa615a43c19115579d61c1ba89d1",
"assets/lib/web/assets/images/projects/pce/1.png": "720e68c61a53cb4c5ab03045e87e0687",
"assets/lib/web/assets/images/projects/pce/9.png": "fbd8e7482fe8344e63c790bcfe141480",
"assets/lib/web/assets/images/projects/pce/2.png": "27577e315284acff74eda25902ce3500",
"assets/lib/web/assets/images/projects/zipartner/7.png": "9ae352ef6337c0c9ec8715c91327771a",
"assets/lib/web/assets/images/projects/zipartner/5.png": "c99492c2ae6ddcce181d35a3b514dd6a",
"assets/lib/web/assets/images/projects/zipartner/8.png": "ff690e1b9948bfb81ece5145166c28ba",
"assets/lib/web/assets/images/projects/zipartner/3.png": "d2651a638ccf288fdeaf7851d6be42bf",
"assets/lib/web/assets/images/projects/zipartner/6.png": "06db52225b18c8547b8f9680a7198057",
"assets/lib/web/assets/images/projects/zipartner/4.png": "c4dff92e824691890413fbd9bdf14cc3",
"assets/lib/web/assets/images/projects/zipartner/1.png": "b1dcc23aca0b2ffd7484b5bff514b4ba",
"assets/lib/web/assets/images/projects/zipartner/2.png": "b9a267fa9fe23dd249141550de57b023",
"assets/lib/web/assets/images/projects/elephant/5.png": "5d770d4a34dccc37c518fc4993ef7e54",
"assets/lib/web/assets/images/projects/elephant/3.png": "276305409a7b187b4b7d245d4796ca3d",
"assets/lib/web/assets/images/projects/elephant/4.png": "ff2d6ea8b3cb61d31cb4a2848223da0a",
"assets/lib/web/assets/images/projects/elephant/1.png": "b502dde5c2e67e9056e55d3bb7d3b60f",
"assets/lib/web/assets/images/projects/elephant/2.png": "b963f6f707a155e254ad42574321a7e6",
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
"assets/fonts/MaterialIcons-Regular.otf": "d8b5446adc5cc26d8abfceb09db40b4e",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"flutter_bootstrap.js": "00ecb0b8ac785d26cbcab38aa79cbfae",
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
