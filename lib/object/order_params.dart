

import 'package:firebase_database/firebase_database.dart';

import '../database/item_infos.dart';
import '../database/opt_infos.dart';

class OrderParams {
  OrderParams({
    required this.itemName,
    required this.qty,
    required this.optNameList,
    required this.amountPerItem,
    required this.subtotal,
  });


  ///商品名
  final String itemName;
  ///個数
  final int qty;
  ///オプションリスト
  final List<String> optNameList;
  ///一個当たりの値段
  final int amountPerItem;
  ///(オプション含めた)小計
  final int subtotal;



  ///DataSnapshotからインスタンス作成
  ///orderSnap.valueが
  ///{item: たこ焼き, options: [ソース, 青のり, 焼きチーズ], qty: 3}の形
  static OrderParams getInstanceFromSnap(DataSnapshot orderSnap) {
    final orderMap = orderSnap.value as Map<String, dynamic>; //Object?型を変換

    return getInstance(orderMap);
  }

  ///Mapからインスタンス作成
  ///{item: たこ焼き, options: [ソース, 青のり, 焼きチーズ], qty: 3}の形
  static OrderParams getInstance(Map<String, dynamic> orderMap) {
    //各パラメータ取り出し
    final String itemName = orderMap["item"]; //"唐揚げ"
    final int qty = orderMap["qty"]; //3(個)
    final List<String> optNameList = ((orderMap["options"] ?? []) as List<dynamic>)
        .map((option) => option.toString()) //dynamic -> String
        .toList(); //["焼きチーズ", "ケチャップ"]
    //商品参照情報を取得
    final ItemInfo targetItemInfo = itemInfos.getList()
        .where((itemInfo) => itemInfo.itemName == itemName) //商品名と一致するinfo
        .first;

    final int itemPrice = targetItemInfo.itemPrice;

    final int optsPrice = (optNameList.isNotEmpty)
        ? optNameList
        .map((optName) => optInfos.optPriceMap[optName] ?? 0)
        .reduce((sum, price) => sum + price)
        : 0;
    final int amountPerItem = itemPrice + optsPrice;
    final int subtotal = qty * amountPerItem;

    return OrderParams(
        itemName: itemName,
        qty: qty,
        optNameList: optNameList,
        amountPerItem: amountPerItem,
        subtotal: subtotal
    );
  }
}