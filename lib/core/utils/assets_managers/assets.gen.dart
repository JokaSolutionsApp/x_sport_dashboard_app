/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/apple.png
  AssetGenImage get apple => const AssetGenImage('assets/icons/apple.png');

  /// File path: assets/icons/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/icons/facebook.png');

  /// File path: assets/icons/google.png
  AssetGenImage get google => const AssetGenImage('assets/icons/google.png');

  /// File path: assets/icons/translate.png
  AssetGenImage get translate =>
      const AssetGenImage('assets/icons/translate.png');

  /// File path: assets/icons/visibility.png
  AssetGenImage get visibility =>
      const AssetGenImage('assets/icons/visibility.png');

  /// File path: assets/icons/visibility_off.png
  AssetGenImage get visibilityOff =>
      const AssetGenImage('assets/icons/visibility_off.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [apple, facebook, google, translate, visibility, visibilityOff];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesAuthenticationGen get authentication =>
      const $AssetsImagesAuthenticationGen();
  $AssetsImagesHomeGen get home => const $AssetsImagesHomeGen();
  $AssetsImagesSplashGen get splash => const $AssetsImagesSplashGen();
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/ar.json
  String get ar => 'assets/translations/ar.json';

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// List of all assets
  List<String> get values => [ar, en];
}

class $AssetsImagesAuthenticationGen {
  const $AssetsImagesAuthenticationGen();

  /// File path: assets/images/authentication/logo.png
  AssetGenImage get logo =>
      const AssetGenImage('assets/images/authentication/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo];
}

class $AssetsImagesHomeGen {
  const $AssetsImagesHomeGen();

  /// File path: assets/images/home/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/home/background.png');

  /// File path: assets/images/home/logo_white.png
  AssetGenImage get logoWhite =>
      const AssetGenImage('assets/images/home/logo_white.png');

  /// List of all assets
  List<AssetGenImage> get values => [background, logoWhite];
}

class $AssetsImagesSplashGen {
  const $AssetsImagesSplashGen();

  /// File path: assets/images/splash/splash.png
  AssetGenImage get splash =>
      const AssetGenImage('assets/images/splash/splash.png');

  /// File path: assets/images/splash/splash_android12_logo.png
  AssetGenImage get splashAndroid12Logo =>
      const AssetGenImage('assets/images/splash/splash_android12_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [splash, splashAndroid12Logo];
}

class AssetsManager {
  AssetsManager._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
