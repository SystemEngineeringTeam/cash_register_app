import 'package:cash_register_app/object/denomination_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../object/denominations.dart';

final changeMoneyCountFamily = StateProvider.family<int, Denominations>((ref, id) {
  return 0;
});

