
import 'package:flutter/material.dart';
import 'package:travelling_app/pages/home_screen.dart';
import 'package:travelling_app/pages/profile_screen.dart';
import 'package:travelling_app/pages/search_screen.dart';
import 'package:travelling_app/pages/ticket_screen.dart';

final List pages=[
 const HomeScreen(),
 const SearchScreen(),
const TicketScreen(),
 const ProfileScreen(),

];

// to manage the height
const kHeight5= SizedBox(height: 5,);