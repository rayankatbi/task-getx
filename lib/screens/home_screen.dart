import 'package:flutter/material.dart';
import 'package:task/components/constant.dart';
import 'package:task/components/widgets/custom_text.dart';

import '../components/widgets/custom_list_tile.dart';
import 'package:get/get.dart';

import '../components/widgets/list_tile_click.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.moveColor,
        automaticallyImplyLeading: false,
        title: Center(
          child: CustomText(
            color: Colors.white,
            text: 'Home Page',
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomListTile(
              title: 'Test 01',
              iconLeading: Icons.person_outline,
              titleColor: Constant.greyColor,
            ),
            CustomListTile(
              title: '02555565',
              iconLeading: Icons.phone_android,
              titleColor: Constant.greyColor,
            ),
            CustomListTile(
              title: 'Test@test.test',
              iconLeading: Icons.email,
              titleColor: Constant.greyColor,
            ),
            ListTileClick(
              title: 'Update Information',
              titleColor: Constant.moveColor,
              iconTrailing: Icons.arrow_forward_ios_outlined,
              onPressed: (){
                Get.toNamed('/update_information');
              },
            ),
            ListTileClick(
              title: 'Change Password',
              titleColor: Constant.moveColor,
              iconTrailing: Icons.arrow_forward_ios_outlined,
              onPressed: (){},


            ),
            ListTileClick(
              title: 'Delete Account',
              titleColor: Constant.moveColor,
              iconTrailing: Icons.arrow_forward_ios_outlined,
              onPressed: (){},

            ),
            ListTileClick(
              title: 'Logout',
              titleColor: Constant.moveColor,
              iconTrailing: Icons.arrow_forward_ios_outlined,
              onPressed: (){},

            ),

          ],
        ),
      ),
    );
  }
}
