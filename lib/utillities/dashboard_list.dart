import 'package:flutter/material.dart';
import 'package:shop_app1/presentation/dashboard_components/balance.dart';
import 'package:shop_app1/presentation/dashboard_components/edit_profile.dart';
import 'package:shop_app1/presentation/dashboard_components/manage_products.dart';
import 'package:shop_app1/presentation/dashboard_components/my_store.dart';
import 'package:shop_app1/presentation/dashboard_components/orders.dart';
import 'package:shop_app1/presentation/dashboard_components/statics.dart';

List<IconData> icons = [
  Icons.store,
  Icons.shop_2_outlined,
  Icons.edit,
  Icons.settings,
  Icons.attach_money,
  Icons.show_chart,
];
List<String> label = [
  'My Store',
  'Orders',
  'Edit profile',
  'Manage products',
  'Balance',
  'Statics',
];

List<Widget> pages = [
  const MyStore(),
  const Orders(),
  const EditProfile(),
  const ManageProducts(),
  const Balance(),
  const Statics(),
];
