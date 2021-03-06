import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';

/// Finds the url of the library that declares the element.
///
/// Note that this needs to check librarySource instead of just source to handle
/// part files correctly.
String moduleUrl(Element element) {
  // TODO(mfairhurst) delete this check. This is just to preserve goldens when
  // https://dart-review.googlesource.com/c/sdk/+/62730 is rolled out. It has
  // no user-facing effects.
  if (element.kind == ElementKind.DYNAMIC) {
    return null;
  }

  var source = element.librarySource ?? element.source;
  var uri = source?.uri?.toString();
  if (uri == null) return null;
  if (Uri.parse(uri).scheme == 'dart') return uri;
  return toAssetUri(_fromUri(uri));
}

String toAssetUri(AssetId assetId) {
  if (assetId == null) throw new ArgumentError.notNull('assetId');
  return 'asset:${assetId.package}/${assetId.path}';
}

AssetId _fromUri(String assetUri) {
  if (assetUri == null) throw new ArgumentError.notNull('assetUri');
  if (assetUri.isEmpty)
    throw new ArgumentError.value('(empty string)', 'assetUri');
  var uri = _toAssetScheme(Uri.parse(assetUri));
  return new AssetId(
      uri.pathSegments.first, uri.pathSegments.skip(1).join('/'));
}

/// Returns the base file name for [AssetId].
String fileName(AssetId id) {
  var uri = _toAssetScheme(Uri.parse(toAssetUri(id)));
  return uri.pathSegments.last;
}

/// Converts `absoluteUri` to use the 'asset' scheme used in the Angular 2
/// template compiler.
///
/// The `scheme` of `absoluteUri` is expected to be either 'package' or
/// 'asset'.
Uri _toAssetScheme(Uri absoluteUri) {
  if (absoluteUri == null) throw new ArgumentError.notNull('absoluteUri');

  if (!absoluteUri.isAbsolute) {
    throw new ArgumentError.value(absoluteUri.toString(), 'absoluteUri',
        'Value passed must be an absolute uri');
  }
  if (absoluteUri.scheme == 'asset') {
    if (absoluteUri.pathSegments.length < 3) {
      throw new FormatException(
          'An asset: URI must have at least 3 path '
          'segments, for example '
          'asset:<package-name>/<first-level-dir>/<path-to-dart-file>.',
          absoluteUri.toString());
    }
    return absoluteUri;
  }
  if (absoluteUri.scheme != 'package') {
    // Pass through URIs with non-package scheme
    return absoluteUri;
  }

  if (absoluteUri.pathSegments.length < 2) {
    throw new FormatException(
        'A package: URI must have at least 2 path '
        'segments, for example '
        'package:<package-name>/<path-to-dart-file>',
        absoluteUri.toString());
  }

  var pathSegments = absoluteUri.pathSegments.toList()..insert(1, 'lib');
  return new Uri(scheme: 'asset', pathSegments: pathSegments);
}
