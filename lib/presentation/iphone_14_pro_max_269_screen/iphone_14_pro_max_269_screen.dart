import 'bloc/iphone_14_pro_max_269_bloc.dart';
import 'models/iphone_14_pro_max_269_model.dart';
import 'package:flutter/material.dart';
import 'package:hritesh_s_application1/core/app_export.dart';
import 'package:hritesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:hritesh_s_application1/widgets/custom_icon_button.dart';

class Iphone14ProMax269Screen extends StatelessWidget {
  const Iphone14ProMax269Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProMax269Bloc>(
        create: (context) => Iphone14ProMax269Bloc(Iphone14ProMax269State(
            iphone14ProMax269ModelObj: Iphone14ProMax269Model()))
          ..add(Iphone14ProMax269InitialEvent()),
        child: Iphone14ProMax269Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone14ProMax269Bloc, Iphone14ProMax269State>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 45.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft,
                              height: 18.v,
                              width: 20.h,
                              margin: EdgeInsets.symmetric(vertical: 4.v),
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          Container(
                              margin: EdgeInsets.only(left: 111.h),
                              decoration:
                                  AppDecoration.outlineSecondaryContainer,
                              child: Text("lbl_track_order".tr,
                                  style: theme.textTheme.titleLarge))
                        ]),
                        SizedBox(height: 20.v),
                        _buildOrderDetails(context),
                        SizedBox(height: 18.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("lbl_order_status".tr,
                                style: theme.textTheme.titleMedium)),
                        SizedBox(height: 20.v),
                        _buildOrderStatus(context)
                      ])),
              bottomNavigationBar: _buildFrame(context)));
    });
  }

  /// Section Widget
  Widget _buildOrderDetails(BuildContext context) {
    return Container(
        height: 373.v,
        width: 384.h,
        margin: EdgeInsets.only(left: 4.h),
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 2.h, right: 8.h, bottom: 20.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildUserProfile(context,
                        mobileNumberLabel: "lbl_name".tr,
                        mobileNumber: "lbl_operator_one".tr),
                    _buildUserProfile(context,
                        mobileNumberLabel: "lbl_mobile_number".tr,
                        mobileNumber: "lbl_1234667890".tr)
                  ]))),
          Align(
              alignment: Alignment.center,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgFrame677,
                              height: 80.v,
                              width: 111.h,
                              radius: BorderRadius.circular(5.h)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 15.h, top: 13.v, bottom: 13.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("msg_videography_drone".tr,
                                        style: CustomTextStyles
                                            .titleSmallSecondaryContainer),
                                    Text("lbl_ultra_hd".tr,
                                        style: CustomTextStyles
                                            .bodyMediumSecondaryContainer),
                                    SizedBox(height: 2.v),
                                    Text("lbl_1050_00".tr,
                                        style: CustomTextStyles
                                            .titleSmallSecondaryContainer_1)
                                  ])),
                          Spacer(),
                          CustomElevatedButton(
                              width: 81.h,
                              text: "lbl_123456".tr,
                              margin: EdgeInsets.only(top: 48.v, bottom: 10.v),
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientPrimaryToOnPrimaryDecoration)
                        ])),
                SizedBox(height: 20.v),
                Divider(endIndent: 4.h),
                SizedBox(height: 18.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("lbl_order_details".tr,
                            style: theme.textTheme.titleMedium))),
                SizedBox(height: 11.v),
                Padding(
                    padding: EdgeInsets.only(left: 1.h, right: 8.h),
                    child: _buildUserProfile(context,
                        mobileNumberLabel: "lbl_drone_type".tr,
                        mobileNumber: "msg_videography_drone".tr)),
                Padding(
                    padding: EdgeInsets.only(left: 1.h, right: 8.h),
                    child: _buildUserProfile(context,
                        mobileNumberLabel: "lbl_category".tr,
                        mobileNumber: "lbl_small".tr)),
                Padding(
                    padding: EdgeInsets.only(left: 1.h, right: 8.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Opacity(
                              opacity: 0.8,
                              child: Text("lbl_date".tr,
                                  style: CustomTextStyles.bodyMedium_1)),
                          Opacity(
                              opacity: 0.85,
                              child: Text("lbl_05_07_2023".tr,
                                  style: theme.textTheme.titleSmall))
                        ])),
                SizedBox(height: 1.v),
                Padding(
                    padding: EdgeInsets.only(left: 1.h, right: 8.h),
                    child: _buildUserProfile(context,
                        mobileNumberLabel: "lbl_duration".tr,
                        mobileNumber: "lbl_5_hours".tr)),
                SizedBox(height: 1.v),
                Padding(
                    padding: EdgeInsets.only(left: 1.h, right: 8.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Opacity(
                              opacity: 0.8,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text("msg_service_location".tr,
                                      style: theme.textTheme.bodyMedium))),
                          Opacity(
                              opacity: 0.85,
                              child: Text("msg_nmids_masabtank".tr,
                                  style: theme.textTheme.titleSmall))
                        ])),
                SizedBox(height: 18.v),
                Divider(endIndent: 4.h),
                SizedBox(height: 20.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("lbl_operator_info".tr,
                            style: theme.textTheme.titleMedium))),
                SizedBox(height: 68.v),
                Divider(endIndent: 4.h)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildOrderStatus(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 11.h, right: 5.h),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Column(children: [
                CustomIconButton(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    child:
                        CustomImageView(imagePath: ImageConstant.imgCheckmark)),
                SizedBox(
                    height: 40.v,
                    child: VerticalDivider(width: 4.h, thickness: 4.v)),
                CustomIconButton(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    child:
                        CustomImageView(imagePath: ImageConstant.imgCheckmark)),
                SizedBox(
                    height: 40.v,
                    child: VerticalDivider(width: 4.h, thickness: 4.v)),
                CustomIconButton(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    child:
                        CustomImageView(imagePath: ImageConstant.imgCheckmark)),
                SizedBox(
                    height: 40.v,
                    child: VerticalDivider(
                        width: 4.h,
                        thickness: 4.v,
                        color: appTheme.blueGray100)),
                Container(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                        borderRadius: BorderRadius.circular(15.h)))
              ])),
          Spacer(flex: 39),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("lbl_drone_booked".tr,
                style: CustomTextStyles.titleSmallSecondaryContainer),
            SizedBox(height: 3.v),
            Text("msg_5th_july_2023_11_45pm".tr,
                style: theme.textTheme.bodySmall),
            SizedBox(height: 38.v),
            Text("msg_pilot_on_the_way".tr,
                style: CustomTextStyles.titleSmallSecondaryContainer),
            SizedBox(height: 1.v),
            Text("lbl_30_minutes_away".tr, style: theme.textTheme.bodySmall),
            SizedBox(height: 38.v),
            Text("msg_payment_completed".tr,
                style: CustomTextStyles.titleSmallSecondaryContainer),
            SizedBox(height: 1.v),
            Text("msg_10th_july_2023".tr, style: theme.textTheme.bodySmall),
            SizedBox(height: 38.v),
            Text("msg_service_completed".tr,
                style: CustomTextStyles.titleSmallSecondaryContainer),
            SizedBox(height: 1.v),
            Text("msg_10th_july_2023".tr, style: theme.textTheme.bodySmall)
          ]),
          Spacer(flex: 60),
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgCalculator,
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        alignment: Alignment.centerRight),
                    SizedBox(height: 41.v),
                    Opacity(
                        opacity: 0.7,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgMap,
                            height: 26.adaptSize,
                            width: 26.adaptSize,
                            alignment: Alignment.centerRight)),
                    SizedBox(height: 44.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgFluentPayment28Regular,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        alignment: Alignment.center),
                    SizedBox(height: 44.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgEosIconsServiceOutlined,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        alignment: Alignment.center)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 21.h, right: 21.h, bottom: 15.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL8),
        child: CustomElevatedButton(
            height: 56.v,
            text: "msg_connect_with_pilot".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration:
                CustomButtonStyles.gradientPrimaryToOnPrimaryTL8Decoration,
            buttonTextStyle: CustomTextStyles.titleMediumWhiteA700));
  }

  /// Common widget
  Widget _buildUserProfile(
    BuildContext context, {
    required String mobileNumberLabel,
    required String mobileNumber,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Opacity(
          opacity: 0.8,
          child: Text(mobileNumberLabel,
              style: theme.textTheme.bodyMedium!.copyWith(
                  color:
                      theme.colorScheme.secondaryContainer.withOpacity(0.64)))),
      Opacity(
          opacity: 0.85,
          child: Text(mobileNumber,
              style: theme.textTheme.titleSmall!.copyWith(
                  color:
                      theme.colorScheme.secondaryContainer.withOpacity(0.65))))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
