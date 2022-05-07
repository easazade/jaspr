# jaspr

Experimental web framework for Dart. Supports SPAs and SSR. 

**Main Features:**

- Familiar component model similar to Flutter widgets
- Easy Server Side Rendering
- Automatic hydration of component data on the client
- Fast incremental DOM updates

> I'm looking for contributors. Don't hesitate to contact me if you want to help in any way.

## About

Jaspr was made with the premise to make a web-framework that looks and feels just like Flutter, but 
renders normal html/css like Vue or React. It is targeted mainly at Flutter developers that want to 
build websites but don't want to use Flutter Web (for various reasons). Since it uses Dart, it is
also strong in terms of type-safety and null-safety compared to JS.

## Directories

- **/experiments**: Experimental apps or features, that are not part of the core framework (yet?).
  - **/minimal_app**: A minimal example with a single entry point for both client and server.
  - **/preload_images**: A component that automatically preloads images for a next route.
  - **/riverpod**: Riverpod example for jaspr.
  - **/scoped_styles**: A component that introduces scoped styles.
  - **/server_handling**: An app that uses custom middleware on the server to host an api.
- **/packages**:
  - **/jaspr**: The main framework package.
  - **/jaspr_builder**: Polyfill builder for integrating js libraries with jaspr.
  - **/jaspr_pad**: DartPad inspired online playground for jaspr apps.
  - **/jaspr_riverpod**: Riverpod implementation for jaspr.
  - **/jaspr_test**: A test package for jaspr.
  
## Roadmap

- [x] Implement core framework
- [x] Write test package and framework tests
- [x] Add riverpod integration package
- [x] Add jasprpad as online playground with samples
- [ ] Adapt rendering process to make it more js-y
- [ ] Add tutorials to jasprpad
- [ ] Add documentation in readme files
- [ ] Add website
- [ ] Add ssg support
- [ ] Expand framework with missing concepts (Animations, ...)
- [ ] Bump test coverage over 80%