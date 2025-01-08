import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tezda_app/app/utils/extension.dart';
import 'package:tezda_app/app/utils/field_validator.dart';
import 'package:tezda_app/common/app_colors.dart';
import 'package:tezda_app/features/authentication/domain/entity/auth_entity.dart';
import 'package:tezda_app/features/widgets/elevated_button_widget.dart';

import '../../../../common/app_strings.dart';
import '../../../widgets/edit_text_field_with.dart';
import '../notifier/auth_notifier.dart';

@RoutePage()
class SigninView extends ConsumerStatefulWidget {
  const SigninView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SigninViewState();
}

class _SigninViewState extends ConsumerState<SigninView> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final FocusNode _usernameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  late AuthNotifier _authNotifier;
  final CancelToken _cancelToken = CancelToken();

  bool _obstructPassword = true;

  @override
  void initState() {
    _authNotifier = ref.read(authNotifierProvider.notifier);
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _usernameFocusNode.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
    _cancelToken.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              Expanded(
                child: ListView(children: [
                  Text(AppString.signIn, style: context.headlineLarge),
                  SizedBox(height: 8.h),
                  Text(AppString.signInInst,
                      style: context.headlineLarge?.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.darkGray.withValues(alpha: .5))),
                  SizedBox(height: 32.h),
                  EditTextFieldWidget(
                      label: AppString.username,
                      controller: _usernameController,
                      focusNode: _usernameFocusNode,
                      validator: FieldValidator.validateString(),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {}),
                  SizedBox(height: 16.h),
                  EditTextFieldWidget(
                      label: AppString.passwordLabel,
                      controller: _passwordController,
                      focusNode: _passwordFocusNode,
                      validator: FieldValidator.validatePlainPass(),
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      obscureText: _obstructPassword,
                      suffixIcon: IconButton(
                          onPressed: () => setState(
                              () => _obstructPassword = !_obstructPassword),
                          icon: Icon(!_obstructPassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined)),
                      onFieldSubmitted: (_) {}),
                  SizedBox(height: 16.h),
                  RichText(
                    text: TextSpan(
                      text: AppString.dontHaveAccount,
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                      children: [
                        TextSpan(
                            text: AppString.createOne,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.purple),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                      ],
                    ),
                  )
                ]),
              ),
              SizedBox(height: 16.h),
              ElevatedButtonIconWidget(
                  title: AppString.proceed,
                  isBusy: authState.isAuthenticating,
                  onPressed: _logUserIn)
            ],
          ),
        ),
      ),
    );
  }

  void _logUserIn() {
    if (!_formKey.currentState!.validate()) return;

    _authNotifier.login(
        parameter: AuthEntity(
            username: _usernameController.text,
            password: _passwordController.text),
        cancelToken: _cancelToken);
  }
}
