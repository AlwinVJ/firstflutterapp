import 'package:flutter/material.dart';
import 'package:yfsampleproject/widgets/container.dart';

class MySecondWidget extends StatelessWidget {
  const MySecondWidget({super.key});

  void userHomePage(BuildContext ctx) {
   Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const MyWidget();
    }));} 

  @override
  Widget build(BuildContext context) {
    List cardContent = [
      [Icons.home, 'User\nProfile', Colors.blue],
      [Icons.notifications, 'Notifications', Colors.green],
      [Icons.camera, 'Camera\nSettings', Colors.grey],
      [Icons.alarm, 'Alarms\nSettings', Colors.yellow],
      [Icons.keyboard, 'Keyboard\nSettings', Colors.grey.shade800],
      // [Icons.flip_to_back_outlined, 'Flip\nShaker', Colors.redAccent.shade700],
      // [Icons.manage_search, 'manage\nShaker', Colors.blue.shade200],
      // [Icons.terminal, 'Termional\nShaker', Colors.lightBlue],
      // [Icons.switch_access_shortcut, 'Switch\nShaker', Colors.grey.shade700],
      // [Icons.assistant_navigation, 'Assistant\nShaker', Colors.limeAccent],
      // [Icons.download_done, 'Download\nShaker', Colors.red],
      // [Icons.select_all, 'Select\nShaker', Colors.orange],
      // [Icons.install_mobile, 'Install\nShaker', Colors.blueGrey.shade700],
      // [Icons.hide_source, 'Hide\nShaker', Colors.brown],
      // [Icons.move_up, 'Move\nShaker', Colors.green],
     
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green.shade100,
        appBar: AppBar(
          centerTitle: true,
          title: Text('User Settings'),
          backgroundColor: Colors.green[600],
          leading:
            IconButton(onPressed: () {
              userHomePage(context);
            }, icon: Icon(Icons.arrow_back)),
            actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
        ),
        body: GridView.builder(
            padding: const EdgeInsets.all(20.0),
            itemCount: 5,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 2),
            itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: cardContent[index][2]),
                child: Center(
                  child: ListTile(
                    leading: Icon(
                      cardContent[index][0],
                      size: 40,
                    ),
                    title: Text(
                      cardContent[index][1],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ))),
      ),
    );
  }
}