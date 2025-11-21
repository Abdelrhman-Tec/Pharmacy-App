import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final String? labelText;
  final bool isPassword;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixTap;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;
  final double borderRadius;
  final bool enabled;
  final int maxLines;
  final bool isPhoneField;
  final String initialCountryCode;

  const CustomTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.labelText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixTap,
    this.validator,
    this.onChanged,
    this.fillColor,
    this.borderColor,
    this.textColor,
    this.borderRadius = 12,
    this.enabled = true,
    this.maxLines = 1,
    this.isPhoneField = false,
    this.initialCountryCode = "EG",
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    _obscure = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isPhoneField) {
      // Phone field with correct layout
      return Directionality(
        textDirection: .ltr,
        child: IntlPhoneField(
          controller: widget.controller,
          initialCountryCode: widget.initialCountryCode,
          disableLengthCheck: true,
          enabled: widget.enabled,
          validator: (phone) {
            if (widget.validator != null) {
              return widget.validator!(phone?.completeNumber ?? '');
            }
            return null;
          },
          onChanged: (phone) {
            if (widget.onChanged != null) {
              widget.onChanged!(phone.completeNumber);
            }
          },
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(color: AppColors.grey400, fontSize: 16.sp),
            filled: true,
            fillColor: widget.fillColor ?? Colors.grey.shade100,
            contentPadding: const .symmetric(vertical: 14, horizontal: 16),
            prefixIcon: widget.prefixIcon != null
                ? Padding(
                    padding: const .only(left: 8.0),
                    child: Icon(widget.prefixIcon, color: AppColors.grey400),
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: .circular(widget.borderRadius),
              borderSide: BorderSide(
                color: widget.borderColor ?? Colors.grey.shade400,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: .circular(widget.borderRadius),
              borderSide: BorderSide(
                color: widget.borderColor ?? Colors.grey.shade300,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: .circular(widget.borderRadius),
              borderSide: BorderSide(
                color: widget.borderColor ?? Theme.of(context).primaryColor,
                width: 1.5,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: .circular(widget.borderRadius),
              borderSide: const BorderSide(color: Colors.red),
            ),
          ),
          flagsButtonMargin: const .only(right: 8),
          showDropdownIcon: true,
          dropdownIconPosition: .leading,
          textAlign: .right,
        ),
      );
    }

    // Default TextFormField
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscure,
      enabled: widget.enabled,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      validator: widget.validator,
      onChanged: widget.onChanged,
      maxLines: widget.maxLines,
      style: TextStyle(color: widget.textColor, fontSize: 16.sp),
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        hintStyle: TextStyle(color: AppColors.grey400, fontSize: 16.sp),
        filled: true,
        fillColor: widget.fillColor ?? Colors.grey.shade100,
        prefixIcon: widget.prefixIcon != null
            ? Icon(color: AppColors.grey400, widget.prefixIcon)
            : null,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  color: AppColors.grey400,
                  _obscure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
                onPressed: () => setState(() => _obscure = !_obscure),
              )
            : (widget.suffixIcon != null
                  ? IconButton(
                      icon: Icon(color: AppColors.grey400, widget.suffixIcon),
                      onPressed: widget.onSuffixTap,
                    )
                  : null),
        contentPadding: const .symmetric(vertical: 14, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: .circular(widget.borderRadius),
          borderSide: BorderSide(
            color: widget.borderColor ?? Colors.grey.shade400,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: .circular(widget.borderRadius),
          borderSide: BorderSide(
            color: widget.borderColor ?? Colors.grey.shade300,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: .circular(widget.borderRadius),
          borderSide: BorderSide(
            color: widget.borderColor ?? Theme.of(context).primaryColor,
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: .circular(widget.borderRadius),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
