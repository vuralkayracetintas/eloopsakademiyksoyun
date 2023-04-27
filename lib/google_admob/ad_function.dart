import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:yksoyun_23_06_2022/google_admob/ad_helper.dart';

int maxFailedLoadAttempts = 3;
int interstitialLoadAttempts = 0;
bool isBottomBannerAdLoaded = false;
InterstitialAd? interstitialAd;

class myAdFunction {
  static void createInterstitialAd() {
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('video reklam yuklendi');
            print('my add  : $ad');
            interstitialAd = ad;
            interstitialLoadAttempts = 0;
            interstitialAd!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('video reklam yuklenmedi');
            print('InterstitialAd failed to load: $error');
            interstitialLoadAttempts += 1;
            interstitialAd = null;
            //interstitialAd = null;
            if (interstitialLoadAttempts < maxFailedLoadAttempts) {
              createInterstitialAd();
            }
          },
        ));
  }

  static void showInterstitialAd() {
    if (interstitialAd != null) {
      interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdShowedFullScreenContent: (InterstitialAd ad) =>
            print('ad onAdShowedFullScreenContent.'),
        onAdDismissedFullScreenContent: (InterstitialAd ad) {
          print('$ad onAdDismissedFullScreenContent.');
          ad.dispose();
          createInterstitialAd();
        },
        onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
          print('$ad onAdFailedToShowFullScreenContent: $error');
          ad.dispose();
          createInterstitialAd();
        },
      );
      interstitialAd?.show();
    }
  }
}
