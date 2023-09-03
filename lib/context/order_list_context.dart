import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/order_num_list_notifier.dart';
import 'order_num_btn.dart';

///注文番号リストWidget
class OrderListContext extends HookConsumerWidget {
  const OrderListContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //プロバイダーからリストを取り出す
    List<int> orderNumList = ref.watch(orderNumListProvider);

    //TODO: Listviewを使う
    return Wrap(
      spacing: 50,
      runSpacing: 50,
      children: orderNumList
          .map((orderNum) => OrderNumBtn(orderNum: orderNum))
          .toList(growable: false),
    );
  }
}
