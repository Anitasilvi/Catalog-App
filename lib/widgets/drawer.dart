import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://lh3.googleusercontent.com/Yiv3qTr_xaQUO1l7Xtfg52MyN1lBLJv3KOjdCmdqsAYLQRyMtPUZ87T8wuUvoHOL4jm2zytg2Emha0oGkvJ6pWpLtIxzOJJB1p4Msf3VyeV4_yY6qCxhJ_HZqTzSU7NoUpqCaLXts0p6Vv-aAtcflOM3W3o-SktzNRSoLYili-o-QP0_W7Kj7Ap3cpn69_EAwtEZzhPsJeqRy165JJYJtgiKn2N1K6HtSn464tQV1ivQYC3gBCDDUAH7Xp5PDEmQqpnUWAW_WSUK4ltuaKx4ckS2uAtUaWAhmk_cKQni3J7dfqie_aJLgg-w6vV-p_GyASTN5E8iH_APsfqnMd0gtMN-8HCo81wKyhF50byKl_QbjylovgoCU4U3ccI7cmrXuzZq2avPeivDo6qGR77UUnGv_Wv6C2M2me7e2ASH-nujFxlk2BeHqPXyJ483COvOt3bvX-kqSFtHt1bLRTZi5YuRske2oJtXf0KzFvrlGTqFKHmXVCkuL60FVyuJtJfkucmMJograyrIIIhvl-_GDn8pZC2NwEwaJ64QDCZhQcDW4fwFZ4peOHjT5mDeXZkE39GLdvICD3nobXU6AqZWbSll0si7ub1-qjZd3KbCHw7BbxEsZe_MwyUkhCN0_-RBJ6NQvz0PTlwaxIuJ_7MbcOasxyCAfPGFmzF8UUqfitms-Okni5VfPrl5ogb_Fzx7jUvBXLcRsOPzUNE4jzN8eavEI9tGwNpHwWcQHJOxFCdJFMy9icpbyyDxcjDr97TmYjB_o93sWP5EEbjbWTc7QjRr0sxlAVdZRVkqVZL06Eail1YSV9MhlGHJIBw97gYiXNNM1Dz8HPgPMVqOcHGcF-q3CdlRpkWNhuJ-FOaLSGHF8kxy2n9NkSOsEny7vFnzecCRaSMttO6BNaU8KatCPQnAcAz8Cw1i5Py7eiTQ5WAiHo--q_KbL0QTILzEhusHfmS2swCFqUaJ41mp34up6ip4-iA4hWQd1QBl_-WBpMmONjCK-ojIhF3Fdn2_1Opar7dsSBRYlRg8RcaIZusmBVazU0F9fMaoU5rbHK6jL-2io9A0obHelMVZRk5PLzZCJyXzhE05uqDdWiL1IrmNG7cU2_5SARzc=s640-no?authuser=0";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Anita Silvi Ferdina"),
                accountEmail: Text("anitaferdina06@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
