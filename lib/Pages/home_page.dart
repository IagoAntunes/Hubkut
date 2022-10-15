import 'package:flutter/material.dart';
import 'package:github/Pages/profile_page.dart';
import 'package:github/Services/general.dart';

import '../Models/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void getApi(BuildContext context) async {
    Profile profile = await General.getProfile('IagoAntunes');

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: ((context) => ProfilePage(
              profile: profile,
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD9E6F6),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'Hubkut',
                          style: TextStyle(
                            fontSize: 70,
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Siga ',
                          style: TextStyle(
                              color: Colors.pink,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'amigos e outros devs do seu interesse',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Conheça ',
                          style: TextStyle(
                              color: Colors.pink,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'novos devs e repositórios',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Compartilhe ',
                          style: TextStyle(
                              color: Colors.pink,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'ideias e soluções',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffF1F9FE),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 110,
                        child: Image.asset('assets/person.png'),
                      ),
                      SizedBox(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Acesse o ',
                            style: const TextStyle(
                              color: Color(0xff5A5A5A),
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'hubkut\n',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              const TextSpan(
                                text: 'com seu usuário do Github',
                                style: TextStyle(
                                  color: Color(0xff5A5A5A),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              border:
                                  Border.all(color: const Color(0xffC5C6CA)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Digite seu usuário'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: ElevatedButton(
                          onPressed: () => getApi(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff2E7BB4),
                          ),
                          child: const Text('Login'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(color: Color(0xffBBCDE8)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(children: const [
                    Text(
                      '2022 HubKut',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text('-Developed by Iago Ferreira')
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
