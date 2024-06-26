Kingfisher in SwiftUI | Swift Package.
========

Kingfisher
--------
````ruby
https://github.com/onevcat/Kingfisher.git
````
--------

If later you want to switch to SwiftUI, just change the KF above to KFImage, and you've done:
--------
````ruby
struct ContentView: View {
    var body: some View {
        KFImage.url(url)
          .placeholder(placeholderImage)
          .setProcessor(processor)
          .loadDiskFileSynchronously()
          .cacheMemoryOnly()
          .fade(duration: 0.25)
          .lowDataModeSource(.network(lowResolutionURL))
          .onProgress { receivedSize, totalSize in  }
          .onSuccess { result in  }
          .onFailure { error in }
    }
}
````
---------

https://github.com/Elaidzha1940/KFImage/assets/64445918/eeb69024-1b7a-4379-a9da-605b2d4168ae

--------

Features
--------
Asynchronous image downloading and caching.

- Loading image from either URLSession-based networking or local provided data.
- Useful image processors and filters provided.
- Multiple-layer hybrid cache for both memory and disk.
- Fine control on cache behavior. Customizable expiration date and size limit.
- Cancelable downloading and auto-reusing previous downloaded content to improve performance.
- Independent components. Use the downloader, caching system, and image processors separately as you need.
- Prefetching images and showing them from the cache to boost your app.
- Extensions for UIImageView, NSImageView, NSButton, UIButton, NSTextAttachment, WKInterfaceImage, TVMonogramView and CPListItem to directly set an image from a URL.
- Built-in transition animation when setting images.
- Customizable placeholder and indicator while loading images.
- Extensible image processing and image format easily.
- Low Data Mode support.
- SwiftUI support.
--------
