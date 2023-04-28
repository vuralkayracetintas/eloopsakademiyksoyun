import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2445169075279341/9628675838';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-2445169075279341/2217289675';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2445169075279341/4428320044';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-2445169075279341/7998925934';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
