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
      body: SingleChildScrollView(
        child: Padding(
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
                            fontSize: 25, fontWeight: FontWeight.w700),
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
                  padding: const EdgeInsets.all(25),
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
                        ),
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
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text(
                          'Meus últimos repositórios:',
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          itemCount: profile.public_repos,
                          itemBuilder: ((context, index) {
                            return Text('oi');
                          }),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Text(
                              'Seguindo',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                '(${profile.listFollowing.length})',
                                style: TextStyle(
                                  color: Colors.blue.shade700,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        child: GridView.builder(
                          itemCount: profile.listFollowing.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          itemBuilder: ((context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        child: Image.network(profile
                                            .listFollowing[index].avatar_url),
                                      ),
                                      Positioned(
                                        bottom: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            profile.listFollowing[index].login
                                                        .length >
                                                    10
                                                ? profile
                                                    .listFollowing[index].login
                                                    .substring(0, 10)
                                                : profile
                                                    .listFollowing[index].login,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Text(
                              'Seguidores',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                '(${profile.listFollowers.length})',
                                style: TextStyle(
                                  color: Colors.blue.shade700,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        child: GridView.builder(
                          itemCount: profile.listFollowers.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          itemBuilder: ((context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        child: Image.network(profile
                                            .listFollowers[index].avatar_url),
                                      ),
                                      Positioned(
                                        bottom: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            profile.listFollowers[index].login
                                                        .length >
                                                    10
                                                ? profile
                                                    .listFollowers[index].login
                                                    .substring(0, 10)
                                                : profile
                                                    .listFollowers[index].login,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
