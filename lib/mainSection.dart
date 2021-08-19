import 'package:flutter/cupertino.dart';
import 'package:profile/home/desktopHome.dart';
import 'package:profile/home/mobileHome.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainSection extends StatefulWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  _MainSectionState createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mohileHome(),
      desktop: desktopHome(),
    );
  }
}
