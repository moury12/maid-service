import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maid_service/core/components/custom_text.dart';
import 'package:maid_service/core/components/custom_text_button.dart';
import 'package:maid_service/core/components/custom_textfield.dart';
import 'package:maid_service/core/constants/app_colors.dart';
import 'package:maid_service/core/constants/app_static_strings.dart';
import 'package:maid_service/core/constants/custom_space.dart';
import 'package:maid_service/core/constants/fontsize_constant.dart';
import 'package:maid_service/core/constants/text_style_constant.dart';
import 'package:maid_service/core/enum/otp_enum.dart';
import 'package:maid_service/features/auth/bloc/login/login_bloc.dart';
import 'package:maid_service/features/auth/presentation/pages/verify_email_page.dart';
import 'package:maid_service/features/auth/presentation/widgets/auth_page_structure_widget.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = '/login';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginBloc loginBloc = LoginBloc();
    return AuthPageStructureWidget(
      buttonText: AppStaticString.loginButton,
      function: () {
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        /*spacing: 12.h,*/
        children: [
          CustomText(
            text: AppStaticString.welcomeBack,
            style: poppinsSemiBold,
            fontSize: getFontSizeExtraExtraLarge(context),
          ),
          space12H,
          CustomText(
            text: AppStaticString.pleaseLoginToYourAcc,
            style: poppinsRegular,
            fontSize: getFontSizeSemiSmall(context),
            color: AppColors.kSubTextColor,
          ),
          space12H,

          CustomTextField(
            title: AppStaticString.emailAddress,
            hintText: 'mobileip@mac.com',
          ),
          space12H,

          CustomTextField(
            title: AppStaticString.password,
            isPassword: true,
            hintText: '**********',
          ),
          Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  BlocBuilder<LoginBloc, LoginState>(
                    bloc: loginBloc,
                    builder: (context, state) {
                      bool isChecked = false;
                      if (state is CheckedState) {
                        isChecked=state.isChecked;
                      } if (state is LoginInitial) {
                        isChecked=state.isChecked;
                      }
                      return Checkbox(

                        value: isChecked,
                        onChanged: (value) {
                          loginBloc
                              .add(CheckBoxEvent(isChecked: value ?? false));
                        },
                      );
                    },
                  ),
                  Expanded(child: CustomText(text: AppStaticString.rememberMe,
                    style: poppinsRegular,
                    color: AppColors.kGreyTextColor,
                    fontSize: getFontSizeSmall(context),))
                ],
              )),
              space8W,

                  Expanded(child: CustomTextButton(text: AppStaticString.forgetPass,
                    fontWeight: FontWeight.w400,
                    fontSize: getFontSizeSmall(context),
                      onPressed: () {
                        Navigator.pushNamed(context, VerifyEmailPage.routeName, arguments:OtpEnum.forgetPass);

                      },))
            ],
          ),
          space12H,
        ],
      ),
    );
  }
}
