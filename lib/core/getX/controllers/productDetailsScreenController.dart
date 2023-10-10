import 'package:get/get.dart';
import 'package:bicycle_shopping_app/models/models.dart';

class ProductDetailsScreenController extends GetxController with GetTickerProviderStateMixin{

  Rx<ProductDataModel> dataModel = Rx<ProductDataModel>(ProductDataModel());
  RxBool isShowBottomSheet = RxBool(false);
  RxBool isDescriptionSelected = RxBool(true);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getDataFromArgument();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void getDataFromArgument(){
    var data = Get.arguments['selectedProduct'];
    if(data != null){
      dataModel.value = data;
      Future.delayed(const Duration(milliseconds: 700),(){
        isShowBottomSheet.value = true;
      });
    }
  }
}