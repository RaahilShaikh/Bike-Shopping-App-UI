import 'package:get/get.dart';
import 'package:bicycle_shopping_app/models/models.dart';

class BottomNavigationBarController extends GetxController{
  RxInt selectedNavigationIndex = RxInt(0);
  RxInt selectedTabIndex = RxInt(0);
  RxList<ProductDataModel> itemList = RxList([
    ProductDataModel(title: "PEUGEOT - LR01",type: "Road Bike",price: "\$ 1,999.99",image: "images/img_bicycle2.png",isFav: false),
    ProductDataModel(title: "SMITH - Trade",type: "Road Helmet",price: "\$ 120.99",image: "images/img_helmet.png",isFav: false),
    ProductDataModel(title: "PEUGEOT - LR02",type: "Road Bike",price: "\$ 1,999.99",image: "images/img_bicycle1.png",isFav: false),
    ProductDataModel(title: "PEUGEOT - LR03",type: "Road Bike",price: "\$ 1,999.99",image: "images/img_bicycle3.png",isFav: false),
  ]);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void onChangedSelectedIndex(int index){
    selectedNavigationIndex.value = index;
  }
}