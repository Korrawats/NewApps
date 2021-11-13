'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "65a4cffe434d638e5dfe80a343f82398",
"assets/assets/images/1-a.png": "ba83e0bc108ea435b232348f79959a04",
"assets/assets/images/1-p.png": "f3e00080bfc62778686d01b19e30c5d7",
"assets/assets/images/1-s.png": "f69531c6087399d0d2f650a871d9929e",
"assets/assets/images/1-sc.png": "459fe01f2cbdf68c2e0e12aac48be8ea",
"assets/assets/images/2-a.png": "d28cde4f7105629877b800554f5d604e",
"assets/assets/images/2-p.png": "12fff19e4b143d41be1212f62d663e4c",
"assets/assets/images/2-s.png": "f7d06225fc64fccd10796e412afac695",
"assets/assets/images/2-sc.png": "7f3668802b510a504302bb9f19b34c21",
"assets/assets/images/3-a.png": "3802143b5d2ac6c01c81aec141941c2b",
"assets/assets/images/3-p.png": "516ca425c7475f2468c2b858c1f8825f",
"assets/assets/images/3-s.png": "b74075ad95a1a1e906eb627bc6715097",
"assets/assets/images/3-sc.png": "7aba37e4c5a76e684621de1daaad502f",
"assets/assets/images/4-a.png": "0dc08582c4e3f6ac48ad4595d8336c7e",
"assets/assets/images/4-p.png": "2e592199f381ab4aef0c43644d37379e",
"assets/assets/images/4-s.png": "fa9677032008a7f2e0b460c5f95c46b8",
"assets/assets/images/4-sc.png": "d362f47753e23c9f4b8716e4c51a3cfb",
"assets/assets/images/5-a.png": "81dae8dd7e278214d3c4223f11f21e32",
"assets/assets/images/5-p.png": "b5df0faf557bb58d6f2019ffbdb3fa15",
"assets/assets/images/5-s.png": "8bdaf3ac6207dd90d80d8ea481086ed7",
"assets/assets/images/5-sc.png": "5230bcca258018153d9ea42446b5bf2e",
"assets/assets/images/food.png": "7484ac148165aea0d0140ce43cca914a",
"assets/assets/images/kao_kai_jeaw.jpg": "4728bc54e5a07d6d2697ac94c1434851",
"assets/assets/images/kao_moo_dang.jpg": "e78769c57a8ab9f4f1e326b777ac437b",
"assets/assets/images/kao_mun_kai.jpg": "af6fc5906490803865684606389ec845",
"assets/assets/images/kao_na_ped.jpg": "1845a19fb4a99d6974021417a3c17360",
"assets/assets/images/kao_pad.jpg": "5697f2fb3478b1a77fcfb7d6f841464e",
"assets/assets/images/no_image.png": "dc733977d5dfd3bccda590c057828e0b",
"assets/assets/images/pad_sie_eew.jpg": "75571d4021ae60358174e87f86e00dd3",
"assets/assets/images/pad_thai.jpg": "9921767d23b16088fbb1df8b11cb32e6",
"assets/assets/images/profile.png": "191d32dea704ce8dfcb8079783321080",
"assets/assets/images/rad_na.jpg": "f0f9be488c92ef57681e5be071acc064",
"assets/assets/images/som_tum_kai_yang.jpg": "000bbfed3cc8a2921cfd842a8abd97c7",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "8c24c86b0da89163d9468d65a63931ae",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "bdb54d696221217ad8192cb01d0f7950",
"/": "bdb54d696221217ad8192cb01d0f7950",
"main.dart.js": "1b03ffc35fcb1b867543ead9dae30e42",
"manifest.json": "4b8cfb813d9e97d2f40711c7162b3b2f",
"version.json": "f956e53c02728d6b97566a4a5d080ca3"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
