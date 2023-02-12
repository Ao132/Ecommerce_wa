import 'package:ecom_wael_hamza/core/constants/image_asset_constant.dart';
import 'package:ecom_wael_hamza/data/model/on_boarding_model.dart';
import 'package:get/get.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "title1 onB".tr,
      body: "body onB".tr,
      image: AppImageAsset.onBoardingImageOne),
  OnBoardingModel(
      title: "title2 onB".tr,
      body: "body onB".tr,
      image: AppImageAsset.onBoardingImageTwo),
  OnBoardingModel(
      title: "title3 onB".tr,
      body: "body onB".tr,
      image: AppImageAsset.onBoardingImageThree),
  // OnBoardingModel(
  //     title: "Fast Delivery",
  //     body: "We Have a 100k Product , Choose \n Your Product From Our E-commerce Shop",
  //     image: ImageAsset.onBoardingImageFour),
];
