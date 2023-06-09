import 'package:flutter/material.dart';
import 'package:pmsna1/screens/add_post_screen.dart';
import 'package:pmsna1/screens/dashboard_screen.dart';
import 'package:pmsna1/screens/list_favorites_cloud.dart';
import 'package:pmsna1/screens/list_popular_videos.dart';
import 'package:pmsna1/screens/register_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/register': (BuildContext context) => const RegisterScreen(),
    '/dash' : (BuildContext context) => DashboardScreen(),
    '/add'  : (BuildContext context) => AddPostScreen(),
    '/popular' : (BuildContext context) => const ListPopularVideos(),
    '/favorites' : (BuildContext context) => const ListFavoritesCloud()
  };
}