import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tezda_app/app/utils/extension.dart';

class EditTextFieldWidget extends ConsumerWidget {
  const EditTextFieldWidget(
      {super.key,
      this.label = '',
      this.title,
      this.controller,
      this.focusNode,
      this.validator,
      this.keyboardType,
      this.textCapitalization = TextCapitalization.none,
      this.readOnly = false,
      this.obscureText = false,
      this.autocorrect = false,
      this.onTap,
      this.onFieldSubmitted,
      this.onChanged,
      this.obscuringCharacter = '*',
      this.textInputAction = TextInputAction.next,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.suffixIcon,
      this.prefix,
      this.titleStyle,
      this.inputFormatters,
      this.contentPadding,
      this.maxLines = 1,
      this.hintMaxLines = 1,
      this.alignLabelWithHint,
      this.titleWidget,
      this.style,
      this.labelStyle,
      this.suffixText,
      this.suffixStyle,
      this.hintStyle,
      this.focusedBorder,
      this.fillColor});

  final String? title;
  final String label;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final bool readOnly;
  final bool obscureText;
  final String obscuringCharacter;
  final void Function()? onTap;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final AutovalidateMode? autovalidateMode;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefix;
  final bool autocorrect;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLines;
  final int? hintMaxLines;
  final bool? alignLabelWithHint;

  final Widget? titleWidget;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final Color? fillColor;
  final String? suffixText;
  final TextStyle? suffixStyle;
  final TextStyle? hintStyle;
  final InputBorder? focusedBorder;

  @override
  Widget build(BuildContext context, WidgetRef ref) => TextFormField(
        controller: controller,
        focusNode: focusNode,
        validator: validator,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        readOnly: readOnly,
        obscureText: obscureText,
        obscuringCharacter: obscuringCharacter,
        onTap: onTap,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        textInputAction: textInputAction,
        autovalidateMode: autovalidateMode,
        autocorrect: autocorrect,
        style: style ??
            context.headlineLarge
                ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
            label: Text(label),
            labelStyle: labelStyle,
            fillColor: fillColor,
            hintText: label,
            focusedBorder: focusedBorder,
            suffixIcon: suffixIcon,
            hintMaxLines: hintMaxLines,
            suffixText: suffixText,
            hintStyle: hintStyle,
            suffixStyle: suffixStyle,
            prefixIcon: prefix,
            contentPadding: contentPadding,
            alignLabelWithHint: alignLabelWithHint),
        inputFormatters: inputFormatters,
        maxLines: maxLines,
      );
}
