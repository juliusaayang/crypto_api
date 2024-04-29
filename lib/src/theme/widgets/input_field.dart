import 'package:crypto_api/src/theme/colors.dart';
import 'package:crypto_api/src/theme/text_theme_extension.dart';
import 'package:crypto_api/src/theme/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class InputField extends StatefulWidget {
  const InputField({
    required this.controller,
    required this.placeholder,
    super.key,
    this.enterPressed,
    this.fieldFocusNode,
    this.nextFocusNode,
    this.additionalNote,
    this.onChanged,
    this.inputFormatters,
    this.maxLines = 1,
    this.validationMessage,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.password = false,
    this.smallVersion = true,
    this.suffix,
    this.prefix,
    this.height,
    this.validationBorderColor,
    this.validator,
    this.inputKey,
    this.textAlign,
    this.fillColor,
    this.isReadOnly = false,
  });

  final TextEditingController? controller;
  final TextInputType textInputType;
  final bool password;
  final String placeholder;
  final String? validationMessage;
  final Function? enterPressed;
  final bool smallVersion;
  final FocusNode? fieldFocusNode;
  final FocusNode? nextFocusNode;
  final TextInputAction textInputAction;
  final String? additionalNote;
  final ValueChanged<String>? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final Widget? suffix;
  final Widget? prefix;
  final double? height;
  final Color? validationBorderColor;
  final FormFieldValidator<String?>? validator;
  final Key? inputKey;
  final TextAlign? textAlign;
  final Color? fillColor;
  final bool isReadOnly;

  @override
  // ignore: library_private_types_in_public_api
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool isPasswordVisible;
  bool isTextNotEmpty = false;

  @override
  void initState() {
    super.initState();
    isPasswordVisible = !widget.password;
    widget.controller?.addListener(() {
      if (mounted) {
        setState(() {
          isTextNotEmpty = widget.controller?.text.isNotEmpty ?? false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(13),
      borderSide: BorderSide(
        color: widget.validationBorderColor ?? CryptoColors.errorColor,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextFormField(
          key: widget.inputKey,
          validator: widget.validator,
          controller: widget.controller,
          keyboardType: widget.textInputType,
          focusNode: widget.fieldFocusNode,
          textInputAction: widget.textInputAction,
          onChanged: widget.onChanged,
          style: textTheme.inputFieldValue!.copyWith(
            color: CryptoColors.textColor,
          ),
          textAlign: widget.textAlign ?? TextAlign.start,
          cursorColor: CryptoColors.textColor,
          inputFormatters: widget.inputFormatters ?? [],
          onEditingComplete: () {
            widget.fieldFocusNode?.unfocus();
            FocusScope.of(context).requestFocus(widget.nextFocusNode);
          },
          obscureText: !isPasswordVisible && widget.password,
          maxLines: widget.maxLines,
          readOnly: widget.isReadOnly,
          decoration: InputDecoration(
            fillColor: widget.fillColor ?? CryptoColors.secondaryColor,
            prefixIcon: widget.prefix,
            border: widget.validationBorderColor != null ? errorBorder : null,
            enabledBorder: widget.validationBorderColor != null ? errorBorder : null,
            focusedBorder: widget.validationBorderColor != null ? errorBorder : null,
            prefixIconConstraints: const BoxConstraints(),
            suffixIconConstraints: const BoxConstraints(),
            suffixIcon: widget.password
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: GestureDetector(
                      onTap: () => setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      }),
                      child: !isPasswordVisible ? const Icon(Icons.visibility_outlined) : const Icon(Icons.visibility_off_outlined),
                    ),
                  )
                : widget.suffix,
            hintText: widget.placeholder,
            hintStyle: textTheme.bodySmall14Regular!.copyWith(
              color: CryptoColors.pureWhite,
            ),
          ),
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
        ),
        if (widget.validationMessage != null) ...[
          ErrorText(
            text: widget.validationMessage,
          ),
        ] else
          const SizedBox(),
        if (widget.additionalNote != null) const Gap(5) else const SizedBox(),
        if (widget.additionalNote != null) NoteText(widget.additionalNote!) else const SizedBox(),
      ],
    );
  }
}
