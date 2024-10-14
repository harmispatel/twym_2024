import '../models/common_master.dart';
import '../models/login_master.dart';

abstract class BaseServices {
  Future<CommonMaster?> register({
    required Map<String, dynamic> params,
  });

  Future<LoginMaster?> login({
    required Map<String, dynamic> params,
  });
}
