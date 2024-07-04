import 'package:skeleton_structure/commons.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({required this.onPressed, super.key});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final double width =
        MediaQuerySize.screenWidth(context: context, percent: 2);
    final double height =
        MediaQuerySize.screenHeight(context: context, percent: 0.07);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          fixedSize: Size(width, height)),
      child: const Text(
        'Login',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
