import 'package:skeleton_structure/commons.dart';

part 'home_page_logic.dart';

class HomePageUi extends StatefulWidget {
  const HomePageUi({super.key});

  @override
  State<HomePageUi> createState() => _HomePageUi();
}

class _HomePageUi extends HomePageLogic {
  @override
  Widget build(BuildContext context) {
    double padding = MediaQuerySize.screenWidth(context: context);
    double height = MediaQuerySize.screenWidth(context: context, percent: 0.25);

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // title
                    Text(
                      'Skeleton Structure Implementation',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),

                    SizedBox(
                      height: height,
                    ),

                    // name field
                    TextFieldWidget(
                      hintText: 'Name',
                      textFieldController: nameController,
                      obscureText: false,
                      focusNode: nameNode,
                      onEditingComplete: () =>
                          FocusScope.of(context).requestFocus(emailNode),
                    ),

                    sizedBoxHeight25,

                    // email field
                    TextFieldWidget(
                      hintText: 'Email',
                      textFieldController: emailController,
                      obscureText: false,
                      focusNode: emailNode,
                      onEditingComplete: () =>
                          FocusScope.of(context).requestFocus(passwordNode),
                    ),

                    sizedBoxHeight25,

                    // phone number field
                    TextFieldWidget(
                      hintText: 'Password',
                      textFieldController: passwordController,
                      obscureText: true,
                      focusNode: passwordNode,
                      onEditingComplete: () => FocusScope.of(context).unfocus(),
                    ),

                    sizedBoxHeight10,

                    // forgot password
                    Row(
                      children: [
                        const Spacer(),
                        GestureDetector(
                          onTap: forgotPasswordMethod,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: height,
                    ),

                    LoginButton(onPressed: loginMethod)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
