import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MTextFormField extends HookWidget {
  const MTextFormField({
    super.key,
    this.hint,
    this.label,
    this.isPassword = false,
    this.keyboardType,
    this.color = Colors.white,
    this.autocorrect = false,
    this.onChanged,
    this.validator,
    this.enabled = true,
    this.initialValue,
    this.onTap,
    this.controller,
    this.prefixIcon,
    this.focusNode,
    this.constraints,
    this.fillColor,
    this.contentPadding,
    this.fontSize,
    this.fontWeight,
    this.maxLength,
    this.maxLines = 1,
    this.isRequired = false,
    this.showBorder = true,
  });

  final String? hint;
  final String? label;
  final bool isPassword;
  final TextInputType? keyboardType;
  final Color? color;
  final bool autocorrect;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool enabled;
  final String? initialValue;
  final void Function()? onTap;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final BoxConstraints? constraints;
  final Color? fillColor;
  final EdgeInsetsGeometry? contentPadding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxLength;
  final int maxLines;
  final bool isRequired;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final isObscure = useState<bool>(false);
    final iTheme = Theme.of(context).inputDecorationTheme;
    final isText = controller == null || controller!.text.isEmpty;

    return Wrap(
      runSpacing: MSize.r(5),
      children: [
        if (label == null)
          const SizedBox()
        else
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Label(label: label!),
              if (isRequired) const _RequiredIndicator(),
            ],
          ),
        TextFormField(
          onTap: onTap,
          focusNode: focusNode,
          controller: controller,
          initialValue: initialValue,
          keyboardType: keyboardType,
          autocorrect: autocorrect,
          obscureText: isPassword ? !isObscure.value : isObscure.value,
          onChanged: onChanged,
          validator: validator,
          enabled: enabled,
          maxLines: maxLines,
          maxLength: maxLength,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          style: TextStyle(
            fontSize: fontSize ?? MSize.fS(16),
            fontWeight: fontWeight ?? FontWeight.w500,
            color: const Color(0xff131313),
          ),
          decoration: InputDecoration(
            fillColor: fillColor,
            contentPadding: contentPadding,
            constraints: constraints,
            hintText: hint,
            prefixIcon: prefixIcon,
            border: showBorder ? iTheme.border : null,
            enabledBorder: !isText ? iTheme.enabledBorder : iTheme.border,
            suffixIcon: !isPassword
                ? null
                : TextButton(
                    onPressed: () => isObscure.value = !isObscure.value,
                    child: Text(
                      isObscure.value ? 'Hide' : 'Show',
                      style: TextStyle(
                        color:
                            !isText ? iTheme.suffixIconColor : Colors.black54,
                      ),
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}

class _Label extends StatelessWidget {
  final String? label;

  const _Label({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label!,
      style: TextStyle(
        fontSize: MSize.fS(14),
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class _RequiredIndicator extends StatelessWidget {
  const _RequiredIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MSize.r(5),
      width: MSize.r(5),
      margin: MSize.pOnly(t: 2, l: 2),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
    );
  }
}
