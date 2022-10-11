import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:freemony/common_widget/common_button.dart';
import 'package:freemony/view/Enter_Code.dart';

class RegistrationScreen2 extends StatefulWidget {
  const RegistrationScreen2({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen2> createState() => _RegistrationScreen2State();
}

class _RegistrationScreen2State extends State<RegistrationScreen2> {
  TextEditingController mobileNo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    'Registration',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff011A51),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Enter your mobile number, we will send',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'you OTP to verify later',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  'asstes/images/2.png',
                  height: 200,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: mobileNo,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 25),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CountryPickerDropdown(
                        initialValue: 'AR',
                        icon: SizedBox(),
                        priorityList: [
                          CountryPickerUtils.getCountryByIsoCode('GB'),
                          CountryPickerUtils.getCountryByIsoCode('CN'),
                        ],
                        sortComparator: (Country a, Country b) =>
                            a.isoCode.compareTo(b.isoCode),
                        onValuePicked: (Country country) {
                          print("${country.name}");
                        },
                      ),
                    ),
                    labelText: "Phone Number",
                    labelStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CommonButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EnterCode(code: mobileNo.text),
                    ),
                  );
                },
                text: 'SEND VIA SMS',
              ),
              SizedBox(
                height: 25,
              ),
              MaterialButton(
                onPressed: () {},
                height: 50,
                minWidth: 300,
                color: Color(0xff011A51),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'SEND VIA WHATSAPP',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'By creating and/or using an account, you',
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'agree to our',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      color: Color(0xffFB847C),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
