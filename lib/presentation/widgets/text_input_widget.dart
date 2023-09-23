import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getlinked_landing_page/core/core.dart';

class TextInputWidget extends StatefulWidget {
  const TextInputWidget(
      {Key? key,
      required this.controller,
      this.title = "",
      required this.hintText,
      this.keyboardType = TextInputType.text,
      this.validator,
      this.inputFormatters = const [],
      required this.hintColor,
      this.noOfLines = 1,
      this.icon,
      this.onChanged,
      this.enabled = true})
      : super(key: key);

  final TextEditingController controller;
  final String title;
  final String hintText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter> inputFormatters;
  final Color hintColor;
  final int noOfLines;
  final String? icon;
  final bool enabled;
  final Function(String)? onChanged;

  @override
  State<TextInputWidget> createState() => _TextInputState();
}

class _TextInputState extends State<TextInputWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyles.textStyle(fontSize: 14.spMin),
      cursorColor: AppColors.white,
      enabled: widget.enabled,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      controller: widget.controller,
      validator: widget.validator,
      inputFormatters: widget.inputFormatters,
      minLines: widget.noOfLines,
      maxLines: widget.noOfLines,
      decoration: InputDecoration(
        // isDense: true,
        prefixIcon: widget.icon != null
            ? UnconstrainedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SvgPicture.asset(
                    widget.icon ?? "",
                    height: 24,
                    width: 24,
                    fit: BoxFit.scaleDown,
                    color: AppColors.white,
                  ),
                ),
              )
            : null,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.white),
            borderRadius: BorderRadius.circular(4)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.white, width: 1),
            borderRadius: BorderRadius.circular(4)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.red),
            borderRadius: BorderRadius.circular(4)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: AppColors.white),
            borderRadius: BorderRadius.circular(4)),
        hintText: widget.hintText,
        errorStyle: const TextStyle(overflow: TextOverflow.visible),
        hintStyle: AppTextStyles.textStyle(fontSize: 14.spMin),
      ),
    );
  }
}
