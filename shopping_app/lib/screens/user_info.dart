import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/provider/dark_theme_privider.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key key}) : super(key: key);

  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  ScrollController _scrollController;
  var top = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                pinned: true,
                backgroundColor: Colors.purple,
                floating: true,
                automaticallyImplyLeading: false,
                elevation: 4,
                expandedHeight: 200.0,
                flexibleSpace: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  top = constraints.biggest.height;
                  return Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.purple[600], Colors.purple[200]],
                            begin: const FractionalOffset(0.0, 0.0),
                            end: const FractionalOffset(1.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp)),
                    child: FlexibleSpaceBar(
                      background:
                          Image(image: AssetImage('images/user_image.png')),
                      collapseMode: CollapseMode.parallax,
                      centerTitle: true,
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AnimatedOpacity(
                            opacity: top <= 110 ? 1.0 : 0,
                            duration: Duration(
                              milliseconds: 500,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 12.0),
                                Container(
                                  height: kToolbarHeight / 1.8,
                                  width: kToolbarHeight / 1.8,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white, blurRadius: 1.0)
                                    ],
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'images/user_image.png')),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Text(
                                  'Guest',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _returnTitle("User Information"),
                    Divider(thickness: 0.5, color: Colors.grey),
                    _returnListTile("Mail", "example123@gmail.com", 0),
                    _returnListTile("Phone Number", "1233455675", 1),
                    _returnListTile("Shipping Adress", "", 2),
                    _returnListTile("Joined Date", "This is Subtitle", 3),
                    _returnTitle("User Settings"),
                    Divider(thickness: 0.5, color: Colors.grey),
                    ListTileSwitch(
                        value: themeChange.darkTheme,
                        onChanged: (value) {
                          setState(() {
                            themeChange.darkTheme = value;
                          });
                        },
                        leading: Icon(Ionicons.md_moon),
                        toggleSelectedOnValueChange: true,
                        visualDensity: VisualDensity.comfortable,
                        switchActiveColor: Colors.purple,
                        switchType: SwitchType.cupertino,
                        title: const Text('Dark Theme',
                            )),
                    _returnListTile("Log Out", "", 4),
                    SizedBox(height: 100.0)
                  ],
                ),
              )
            ],
          ),
          _buildFab()
        ],
      ),
    );
  }

  List<IconData> _myIcons = [
    Icons.email,
    Icons.phone,
    Icons.local_shipping,
    Icons.watch_later,
    Icons.exit_to_app_rounded
  ];

  Widget _returnListTile(String title, String subtitle, int indexNum) {
    return Material(
      child: InkWell(
        child: ListTile(
          leading: Icon(_myIcons[indexNum]),
          title: Text(title),
          subtitle: Text(subtitle),
        ),
      ),
    );
  }

  Widget _returnTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
      ),
    );
  }

  Widget _buildFab() {
    // Starting positon of Floating Action Button
    final double defaultTopMargin = 200.0 - 4.0;
    // Pixels from top where Scaling should Start
    final double scaleStart = 160.0;
    // Pixels from top where Scaling shound End
    final double scaleEnd = scaleStart / 2;

    double top = defaultTopMargin;
    double scale = 1.0;

    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;
      top -= offset;

      if (offset < defaultTopMargin - scaleStart) {
        scale = 1.0;
      } else if (offset < defaultTopMargin - scaleEnd) {
        scale = (defaultTopMargin - scaleEnd - offset) / scaleEnd;
      } else {
        scale = 0.0;
      }
    }
    return Positioned(
        top: top,
        right: 16.0,
        child: Transform(
            transform: Matrix4.identity()..scale(scale),
            alignment: Alignment.center,
            child: FloatingActionButton(
              backgroundColor: Colors.purple,
              onPressed: () {},
              child: Icon(Icons.camera_alt_outlined),
              heroTag: 'btnl',
            )));
  }
}
