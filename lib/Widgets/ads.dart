import 'package:firebase_admob/firebase_admob.dart';

const String testDevice = "9CCD1527B7C348C503C002ACCFF442EB";

class GoogleAds {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: false,
    contentUrl: "ehealthinsurance.com/medicare",
    keywords: <String>["insurance", "health", 'monatage'],
  );
  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;
  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: "ca-app-pub-3718587720091885/1698566265",
        size: AdSize.fullBanner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
        });
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
        adUnitId: "ca-app-pub-3718587720091885/4153145698",
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("InterstitialAd $event");
        });
  }

  // @override
  // void initState() {
  //   FirebaseAdMob.instance.initialize(
  //     appId: "ca-app-pub-3718587720091885~1910125737",
  //   );
  //   _bannerAd = createBannerAd()
  //     ..load()
  //     ..show(anchorType: AnchorType.bottom);
  //   _interstitialAd = createInterstitialAd()
  //     ..load()
  //     ..show();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _bannerAd.dispose();
  //   _interstitialAd.dispose();
  //   super.dispose();
  // }
}
