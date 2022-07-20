import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

class FriendsPage extends StatefulWidget {
  final DatabaseReference? databaseReference;
  final Future<Database>? db;
  final String? id;

  FriendsPage({this.databaseReference, this.db, this.id});

  @override
  State<StatefulWidget> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  Future<List>? _FriendList;

  @override
  void initState() {
    super.initState();
    // _FriendList = getTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
