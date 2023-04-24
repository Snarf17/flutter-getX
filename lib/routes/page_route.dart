import 'package:flutter_getx/pages/detail_product.dart';
import 'package:flutter_getx/pages/home.dart';
import 'package:flutter_getx/pages/page2.dart';
import 'package:flutter_getx/pages/page3.dart';
import 'package:flutter_getx/pages/page4.dart';
import 'package:flutter_getx/pages/page5.dart';
import 'package:flutter_getx/pages/product.dart';
import 'package:flutter_getx/routes/name_route.dart';
import 'package:get/get.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: RouteNames.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteNames.detailproduct,
      page: () => DetailProducts(),
    ),
    GetPage(
      name: RouteNames.product,
      page: () => Product(),
    ),
    GetPage(
      name: RouteNames.product + '/:id',
      page: () => Product(),
    ),
    GetPage(
      name: RouteNames.page_2,
      page: () => PageDua(),
    ),
    GetPage(
      name: RouteNames.page_3,
      page: () => PageTiga(),
    ),
    GetPage(
      name: RouteNames.page_4,
      page: () => PageEmpat(),
    ),
    GetPage(
      name: RouteNames.page_5,
      page: () => PageLima(),
    ),
  ];
}
