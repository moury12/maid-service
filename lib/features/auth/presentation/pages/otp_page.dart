import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_text_button.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/core/enum/otp_enum.dart';
import 'package:maid_service/features/auth/presentation/pages/enter_personal_info_page.dart';
import 'package:maid_service/features/auth/presentation/widgets/auth_page_structure_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPage extends StatelessWidget {
  static const String routeName = '/otp';
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final OtpEnum? otpEnum =ModalRoute.of(context)?.settings.arguments as OtpEnum;
    return AuthPageStructureWidget(
      function: () {
       if (otpEnum == OtpEnum.verify){

       }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: AppStaticString.sixDigitCode,
            style: poppinsSemiBold,
            fontSize: getFontSizeExtraExtraLarge(context),
          ),
          space8H,
          CustomText(
            text: AppStaticString.pleaseEnterTheCode,
            style: poppinsRegular,
            fontSize: getFontSizeSemiSmall(context),
            color: AppColors.kSubTextColor,
          ),

          ///=====================dynamic email====================///

          CustomText(
            text: 'jennywilson@gmail.com',
            style: poppinsRegular,
            fontSize: getFontSizeSemiSmall(context),
            color: AppColors.kSubTextColor,
          ),
          space16H,
          PinCodeTextField(
            cursorColor: AppColors.kTextColor,
            keyboardType: TextInputType.number,

            /*controller: otpPinController,*/
            enablePinAutofill: true,
            appContext: (context),
            onCompleted: (value) {
              /*AuthController.to.otpScreen.value = value.toString();
                      AuthController.to.update();*/
            },
            autoFocus: true,
            textStyle: poppinsRegular.copyWith(
                color: AppColors.kTextColor,
                fontSize: getFontSizeExtraLarge(context)),
            pinTheme: PinTheme(
              activeColor: AppColors.kGreyBorderColor,
              disabledColor: Colors.transparent,
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(12),
              fieldHeight: 50.w,
              fieldWidth: 50.w,
              selectedColor: Colors.transparent,
              inactiveColor: AppColors.kButtonBackgroundColor,
              activeFillColor: AppColors.kButtonBackgroundColor,
              selectedFillColor: AppColors.kButtonBackgroundColor,
              inactiveFillColor: AppColors.kButtonBackgroundColor,
              borderWidth: 0,
              errorBorderColor: Colors.red,
              activeBorderWidth: 0,
              inactiveBorderWidth: 1,

              // selectedColor: AppColors.blue50,
              // inactiveColor: AppColors.blue50,
              // activeColor: AppColors.blue800,
            ),
            length: 5,
            enableActiveFill: true,
          ),
          Row(
            children: [
              CustomTextButton(
                fontWeight: FontWeight.w400,
                padding: EdgeInsets.zero,
                text: AppStaticString.resendCode,
                onPressed: () {},
              ),

              ///========================dynamic duration====================///
              CustomText(
                fontWeight: FontWeight.w400,
                color: AppColors.kPrimaryColor,
                text: '00:00',
              ),
            ],
          ),
          space12H,
        ],
      ),
    );
  }
}
