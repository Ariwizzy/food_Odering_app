import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:high_cpc_app/Widgets/drawer.dart';
import 'package:high_cpc_app/Widgets/items_widget.dart';

const String testDevice = "68C61351376D01050E45EF855D0D0545";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: false,
    contentUrl: "ehealthinsurance.com/medicare",
    keywords: <String>[
      "insurance",
      "health",
      'montage',
      'dental',
    ],
  );
  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;
  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: "ca-app-pub-9448802715484859/4203103778",
        size: AdSize.fullBanner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
        });
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
      adUnitId: "ca-app-pub-9448802715484859/6913544517",
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd $event");
      },
    );
  }

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(
      appId: "ca-app-pub-9448802715484859~2011398162",
    );
    _bannerAd = createBannerAd()
      ..load()
      ..show(anchorType: AnchorType.bottom);
    _interstitialAd = createInterstitialAd()
      ..load()
      ..show();
    super.initState();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    _interstitialAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chicken Republic",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_shopping_cart,
            ),
          )
        ],
      ),
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        child: Dwidget(),
      ),
      body: ItemWidget(),
    );
  }
}



