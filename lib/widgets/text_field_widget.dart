import 'package:skeleton_structure/commons.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    required this.hintText,
    required this.textFieldController,
    required this.obscureText,
    required this.focusNode,
    required this.onEditingComplete,
    super.key,
  });

  final String hintText;
  final TextEditingController textFieldController;
  final bool obscureText;
  final FocusNode focusNode;
  final void Function()? onEditingComplete;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.focusNode,
      controller: widget.textFieldController,
      obscureText: widget.obscureText,
      onEditingComplete: widget.onEditingComplete,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        fillColor: Colors.grey[100],
        filled: true,
        hintText: widget.hintText,
      ),
    );
  }
}
