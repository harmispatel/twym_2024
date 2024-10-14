import 'package:flutter/cupertino.dart';
import 'package:twym_2024/models/common_master.dart';

import '../../services/api_para.dart';
import '../../services/index.dart';
import '../../utils/common_colors.dart';
import '../../utils/common_utils.dart';

class RegisterViewModel with ChangeNotifier {
  late BuildContext context;
  final _services = Services();

  void attachedContext(BuildContext context) {
    this.context = context;
    notifyListeners();
  }

  Future<void> registerApi({
    required String auth,
    required String country,
    required String input,
    required String pin,
    required String type,
  }) async {
    CommonUtils.showProgressDialog();
    Map<String, dynamic> params = <String, dynamic>{
      ApiParams.auth: auth,
      ApiParams.country: country,
      ApiParams.input: input,
      ApiParams.pin: pin,
      ApiParams.type: type,
    };
    CommonMaster? master = await _services.api!.register(params: params);
    CommonUtils.hideProgressDialog();
    if (master == null) {
      CommonUtils.oopsMSG();
    } else if (master.success!) {
      CommonUtils.showSnackBar(master.message, color: CommonColors.greenColor);
      Navigator.pop(context);
    } else if (!master.success!) {
      CommonUtils.showSnackBar(master.message, color: CommonColors.mRed);
    }
    notifyListeners();
  }
}
