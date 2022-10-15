import 'package:flutter/material.dart';

import '../Models/profile.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key, required this.profile});
  Profile profile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD9E6F6),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bem-vindo(a), ${profile.name}',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Sorte de hoje: ',
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'Cada sonho que você deixa pra trás, é um pedaço do seu futuro que deixa de existir.',
                              style: TextStyle(
                                color: Color(0xff999999),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text(
                              'Repositórios',
                              style: TextStyle(
                                color: Color(0xff5A5A5A),
                              ),
                            ),
                            Text(
                              profile.public_repos.toString(),
                              style: TextStyle(color: Colors.blue.shade600),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              'Favoritos',
                              style: TextStyle(color: Color(0xff5A5A5A)),
                            ),
                            Text(
                              profile.listStarred.length.toString(),
                              style: TextStyle(color: Colors.blue.shade600),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              'Seguidores',
                              style: TextStyle(color: Color(0xff5A5A5A)),
                            ),
                            Text(
                              profile.followers.toString(),
                              style: TextStyle(color: Colors.blue.shade600),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              'Seguindo',
                              style: TextStyle(color: Color(0xff5A5A5A)),
                            ),
                            Text(
                              profile.following.toString(),
                              style: TextStyle(color: Colors.blue.shade600),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Text(
                        'Oque você deseja fazer ?',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color(0xff6F92BB),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff6F92BB)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Criar Repositorio'),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
