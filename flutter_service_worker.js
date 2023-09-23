'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"assets/shaders/ink_sparkle.frag": "face5c2f106eecf1dda786745c50b01f",
"assets/assets/icons/contact.svg": "433bbbaeb36db6ad9c8fcc0dec8ea021",
"assets/assets/icons/ri_linkedin-fill.svg": "49a5f62cee13522944ace03edc0d5f31",
"assets/assets/icons/facebook.svg": "336064e4c0b6ede3a1e8c77c80ec5625",
"assets/assets/icons/Vector%2520(3).svg": "44d5ef7137b29918adb3d2f053a37611",
"assets/assets/icons/x.svg": "85031d6e42276f0006895f36faf32b72",
"assets/assets/icons/location.svg": "252524bd5423be80e75490f0abcbdffd",
"assets/assets/icons/Vector%25204.svg": "8c6812171916579633083c1cd48f047a",
"assets/assets/icons/mdi_instagram.svg": "0b6431894e0e3b39f17d1b3a7875d88b",
"assets/assets/icons/dotted_line.svg": "507f0066b1d1c571458de364f5014309",
"assets/assets/images/Purple-Lens-Flare-PNG.png": "8593d0728ee7fcd3874b247c1506d8b0",
"assets/assets/images/arrow.png": "7c9aeb4ce1448913556496aaa96d35b0",
"assets/assets/images/winwise.png": "90fa66da1524f404fbfb913ce681edb8",
"assets/assets/images/prizes.png": "2c0b05a400775226e3779375217c173d",
"assets/assets/images/bigidea.png": "ceaddaf4552e07ed344024df6ac62ec8",
"assets/assets/images/networksuccess.png": "af37907ff6829af87ee2e859dcd0d745",
"assets/assets/images/Purple-Lens-Flare-PNG%2520(1).png": "db0ce72c5590dad96b75017c1d704d1b",
"assets/assets/images/star.png": "35a83325daee599f1ade39cfb441153d",
"assets/assets/images/electricworld.png": "86db8ac9488fdd040b18e6387a491814",
"assets/assets/images/chain-9365116-7621444.png": "0fbd3fc96d349a87aac839a3484872cd",
"assets/assets/images/man-wearing-smart-glasses-touching-virtual-screen%25201.png": "69bdedbb7826c84c6fb8650f1289a4fb",
"assets/assets/images/Creative%25201.png": "461168ed83cfa63f04dc0a3cb76a4c36",
"assets/assets/images/prvacy_lock.png": "3f26d71b6962fe31b962e508cf66b151",
"assets/assets/images/registerman.png": "35615e9afbde91ad3339561cda60d8d2",
"assets/assets/images/Paybox.png": "9bdb023f62bf9b460f8195e5c836be29",
"assets/assets/images/whisperisms.png": "3aa4ee20385a467498c2c872d14ab850",
"assets/assets/images/metrix%25201.png": "d29f281dbe3ebb17cba14321cfc19b93",
"assets/assets/images/networksuccessman.png": "50720ac44a376d396ef89f3a5e54cc1c",
"assets/assets/images/star%2520(2).png": "6ca166691277461b30339d6cb29648e3",
"assets/assets/images/faqs.png": "df5b2f9040590c0448fe6eab5e0e06da",
"assets/assets/images/firstprize.png": "b2b16d48a00c995c0902af0c5f9d3dc4",
"assets/assets/images/sata%2520gra.png": "24a4b7a0dbf065e2f22cc69e8a4e2b25",
"assets/assets/images/libertyassuredsponsor.png": "bdf24d3dfe6f65524e4eddee166daa8e",
"assets/assets/images/star%2520(1).png": "6ca166691277461b30339d6cb29648e3",
"assets/assets/images/star%2520pu.png": "3e11cb0db783a626159c39fa658d8afe",
"assets/assets/images/thirdprize.png": "cc5b48e18685092ccccb6ee9121c8f53",
"assets/assets/images/Vizual%2520Plus.png": "60e61c4ab466a2bb78e173349ed22ccf",
"assets/assets/images/manwithglasses.png": "3a40eaafc4e919beffe589b6640262e7",
"assets/assets/images/secondprize.png": "6bf2b89ce5d58bf6ca6e344cd77f5261",
"assets/assets/images/liberty%2520pay.png": "07a070cd1cef2be4d60cc1aacc333b9e",
"assets/assets/images/rules.png": "d8d73f3ab7cbf337c19c201d160156a2",
"assets/assets/images/privacyandpolicy1.png": "29a6a82a91c2ed3ab802c370a8688fe0",
"assets/assets/images/Image%25201.png": "972abd0ba813dba6bdcc184c1d38f7af",
"assets/assets/images/list%2520terms.png": "b2ec7da07e01378a1ac63e634c71b990",
"assets/assets/images/1f4a5.png": "cac521691b44dbee15f40d7daef64bc9",
"assets/assets/images/judgingcriteria.png": "2db143046b09e39fb55f0d6ec25f53d6",
"assets/assets/fonts/ClashDisplay-Bold.ttf": "845b81eb8251429424eadff3ad713e4a",
"assets/assets/fonts/ClashDisplay-Regular.otf": "8a81aaa5c6c6cba6e387259de997bfe9",
"assets/AssetManifest.json": "b3e21b6a4caa64855c98908157acf74f",
"assets/NOTICES": "f43aec549718ff8819bcb56d4a908e3c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/FontManifest.json": "573232c2ec0b2b86eaee0c9708cdec12",
"version.json": "26742573300d672240fcd04c4fcf8b91",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"splash/style.css": "4b03495aa7eca814526dc26b03107a27",
"splash/splash.js": "123c400b58bea74c1305ca3ac966748d",
"index.html": "c30ab44ac0d69a89b9670b14a3955947",
"/": "c30ab44ac0d69a89b9670b14a3955947",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "532f53ace4848955e4f6946c82773ae8",
"manifest.json": "e6c8e03b381307a862ff8cdff38a6220"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
