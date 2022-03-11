import 'package:flutter/material.dart';
import 'package:skyvin/screens/sky_login/widgets/sky_input_style.dart';

import '../../../constans/sky_colors.dart';
import '../../../constans/sky_text_style.dart';
import '../../sky_add_car/sky_add_car.dart';

class SkyRegistrationForm extends StatefulWidget {
  const SkyRegistrationForm({Key? key}) : super(key: key);

  @override
  State<SkyRegistrationForm> createState() => _SkyRegistrationFormState();
}

class _SkyRegistrationFormState extends State<SkyRegistrationForm> {
  final _loginTextController = TextEditingController();
  final _promoTextController = TextEditingController();
  String? errorText = null;
  String? errorPromo = null;
  bool isEmail = true;

  void _login() {
    final login = _loginTextController.text;
    final promo = _promoTextController.text;

    if (login != 'admin@mail.ru') {
      errorText = null;
    } else {
      errorText = 'login занят';
    }

    if (promo == 'qwe' || promo == '') {
      errorPromo = null;
    } else {
      errorPromo = 'Такого промокода не существует';
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
          if (errorText != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                errorText!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
            ),
          const SizedBox(height: 20),
          TextField(
            controller: _promoTextController,
            decoration: InputDecoration(
              labelText: 'Промокод (если есть)',
              hintText: 'Введите промокод',
              filled: true,
              fillColor: SkyColors.colorLightGrey,
              border: SkyInputStyle.inputStyle,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 20,
              ),
            ),
          ),
          if (errorPromo != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                errorPromo!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
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
                  'Зарегистрироваться',
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
