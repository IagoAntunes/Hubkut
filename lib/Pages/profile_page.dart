import 'package:flutter/material.dart';

import '../Models/profile.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key, required this.profile});
  Profile profile;
  List<String> listMenu = [
    'Criar Repositorio',
    'Importar Repositorio',
    'Perfil'
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffD9E6F6),
      appBar: AppBar(
        title: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              'Hubkut',
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
          ),
        ),
      ),
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
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bem-vindo(a), ${profile.name.substring(0, profile.name.indexOf(' '))}',
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
              space(),
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
                      SizedBox(
                        width: size.width * 0.8,
                        height: 40,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: listMenu.length,
                          separatorBuilder: ((context, index) => SizedBox(
                                width: 15,
                              )),
                          itemBuilder: ((context, index) {
                            return Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xff6F92BB),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff6F92BB)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 0),
                                  child: Text(listMenu[index]),
                                ),
                                onPressed: () {},
                              ),
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const space(),
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text(
                          'Meus últimos repositórios:',
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.4,
                        child: ListView.separated(
                          separatorBuilder: ((context, index) => const SizedBox(
                                height: 5,
                              )),
                          itemCount: profile.listRepository.length,
                          itemBuilder: ((context, index) {
                            return Container(
                              height: size.height * 0.15,
                              decoration: const BoxDecoration(
                                color: Color(0xffD9E6F6),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.book,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              profile.listRepository[index]
                                                  .full_name,
                                              style: const TextStyle(
                                                color: Color(0xff2E7BB4),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 200,
                                          child: Text(
                                            profile.listRepository[index]
                                                .description!,
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                            softWrap: false,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0xff6F92BB),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 3),
                                            child: Row(
                                              children: const [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15,
                                                ),
                                                Text(
                                                  'Star',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const space(),
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
                            const Text(
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
                        height: size.height * 0.3,
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
                                            style: const TextStyle(
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
              const space(),
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
                            const Text(
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
                        height: size.height * 0.3,
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
                                            style: const TextStyle(
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

class space extends StatelessWidget {
  const space({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 20);
  }
}
