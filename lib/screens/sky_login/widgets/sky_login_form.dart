import 'package:flutter/material.dart';
import 'package:skyvin/screens/sky_login/widgets/sky_input_style.dart';
import 'package:skyvin/screens/sky_main_screen/sky_main_screen.dart';

import '../../../constans/sky_colors.dart';
import '../../../constans/sky_text_style.dart';
import '../../sky_add_car/sky_add_car.dart';

class SkyLoginForm extends StatefulWidget {
  const SkyLoginForm({Key? key}) : super(key: key);

  @override
  State<SkyLoginForm> createState() => _SkyLoginFormState();
}

class _SkyLoginFormState extends State<SkyLoginForm> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;
  bool isEmail = true;

  void _login() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;

    if (login == 'admin' && password == 'admin') {
      errorText = null;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SkyMainScreen(),
        ),
      );
    } else {
      errorText = 'Не верный логин или пароль';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            spreadRadius: 3,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          if (errorText != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                errorText!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Телефон',
                style: isEmail
                    ? SkyTextStyle.fontSize20W400Grey
                    : SkyTextStyle.fontSize20W400,
              ),
              Switch(
                activeColor: SkyColors.colorBlue,
                activeTrackColor: Color(0xFFEBEBEB),
                inactiveTrackColor: Color(0xFFEBEBEB),
                inactiveThumbColor: SkyColors.colorBlue,
                value: isEmail,
                onChanged: (value) {
                  setState(() {
                    isEmail = value;
                    print(isEmail);
                  });
                },
              ),
              Text(
                'E-mail',
                style: isEmail
                    ? SkyTextStyle.fontSize20W400
                    : SkyTextStyle.fontSize20W400Grey,
              ),
            ],
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _loginTextController,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Введите email',
              filled: true,
              fillColor: SkyColors.colorLightGrey,
              border: SkyInputStyle.inputStyle,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 20,
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _passwordTextController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Пароль',
              hintText: 'Введите пароль',
              filled: true,
              fillColor: SkyColors.colorLightGrey,
              border: SkyInputStyle.inputStyle,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 20,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const InkWell(
            child: Text(
              'Забыли пароль?',
              style: SkyTextStyle.fontSize18NoramlUnderline,
            ),
          ),
          const SizedBox(height: 20),
          Material(
            borderRadius: BorderRadius.circular(3),
            color: const Color(0xff39A2DD),
            child: InkWell(
              borderRadius: BorderRadius.circular(3),
              highlightColor: SkyColors.colorBlue.withOpacity(0.7),
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                padding: const EdgeInsets.all(14),
                child: const Text(
                  'Войти',
                  style: SkyTextStyle.fontSize16Noraml,
                  textAlign: TextAlign.center,
                ),
              ),
              onTap: _login,
            ),
          ),
        ],
      ),
    );
  }
}
