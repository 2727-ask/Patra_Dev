import 'package:flutter/material.dart';
import 'package:patra/widgets/category_slider.dart';
import 'package:patra/widgets/password_form_field.dart';
import 'package:patra/widgets/phone_number_field.dart';

import '../widgets/banner_carausel.dart';
import '../widgets/text_form_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController phone = TextEditingController();
    return ListView(
      children: [
        const CategorySlider(),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: const BannerCarausel(),
        ),
        MindCliksTextFormField(
          label: "Hello World",
          controller: null,
          required: true,
          type: "",
        ),
        MindCliksPasswordField(
          label: "Password",
        ),
        MindsCliksPhoneField(controller: phone, onCountryCodeChange: () => {})
      ],
    );
  }
}
