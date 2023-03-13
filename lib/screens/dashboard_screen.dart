import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:pmsna1/provider/theme_provider.dart';
import 'package:pmsna1/screens/list_post.dart';
import 'package:pmsna1/settings/styles_settings.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {

    ThemeProvider theme = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Social TEC :) !'),
      ),
      body: ListPost(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.pushNamed(context, '/add').then((value) {
            setState(() {});
          });
        },
        label: const Text('Add post!'),
        icon: const Icon(Icons.add_comment),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://previews.123rf.com/images/dclipart/dclipart1611/dclipart161100025/68284221-logotipo-de-la-mascota-del-lince-jefe-de-lince-aislado-ilustraci%C3%B3n-vectorial-.jpg'),
              ),
              accountName: Text('Rubensin Torres Frias'), 
              accountEmail: Text('ruben.torres@itcelaya.edu.mx')
            ),
            ListTile(
              onTap: () {},
              title: Text('Práctica 1'),
              subtitle: Text('Descripción de la práctica'),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.chevron_right),
            ),
            DayNightSwitcher(
              isDarkModeEnabled: isDarkModeEnabled, 
              onStateChanged: (isDarkModeEnabled) {
                isDarkModeEnabled
                ? theme.setthemeData(StylesSettings.darkTheme(context))
                : theme.setthemeData(StylesSettings.lightTheme(context));
                this.isDarkModeEnabled = isDarkModeEnabled;
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}