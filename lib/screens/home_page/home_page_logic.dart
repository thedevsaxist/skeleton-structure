part of 'home_page_ui.dart';

abstract class HomePageLogic extends State<HomePageUi> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode nameNode = FocusNode();
  final FocusNode emailNode = FocusNode();
  final FocusNode passwordNode = FocusNode();

  @override
  void initState() {
    super.initState();

    nameController.addListener(loginMethod);
    emailController.addListener(loginMethod);
    passwordController.addListener(loginMethod);
  }

  @override
  void dispose() {
    nameNode.dispose();
    emailNode.dispose();
    passwordNode.dispose();

    nameController.removeListener(loginMethod);
    emailController.removeListener(loginMethod);
    passwordController.removeListener(loginMethod);

    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void forgotPasswordMethod() {
    print('Why adult like you go dey forget ehn password?!');
  }

  void loginMethod() {
    print(
        '${nameController.text} is now logged in with email address ${emailController.text}');
  }

  void emailValidation(){}

  void passwordAuth(){}
}
