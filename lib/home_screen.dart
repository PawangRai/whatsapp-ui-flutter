import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text("Whatsapp")),
              bottom: const TabBar(tabs: [
                Tab(child: Icon(Icons.camera_alt)),
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(child: Text("Calls")),
              ]),
              actions: [
                const Icon(Icons.search),
                const SizedBox(width: 10),
                PopupMenuButton(
                    icon: const Icon(Icons.more_vert_outlined),
                    itemBuilder: (
                      context,
                    ) =>
                        [
                          const PopupMenuItem(
                              value: 1, child: Text("New Group")),
                          const PopupMenuItem(
                              value: 2, child: Text("Settings")),
                          const PopupMenuItem(value: 3, child: Text("Log out"))
                        ]),
                const SizedBox(width: 10)
              ],
            ),
            body: TabBarView(
              children: [
                const Text("Camera"),
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                      title: Text("John Wick"),
                      subtitle: Text("Where is my dog?"),
                      trailing: Text("1:00PM"),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ListTile(
                              leading: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                    ),
                                    Icon(Icons.add_circle, color: Colors.green)
                                  ]),
                              title: Text(
                                "My status",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("Tap to add status update"),
                            ),
                            const SizedBox(height: 10),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("Recent updates"),
                            ),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.green,
                                    )),
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                ),
                              ),
                              title: const Text("John Wick"),
                              subtitle: const Text("Uploaded sometime ago"),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: Colors.green,
                              )),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                        ),
                        title: const Text("John Wick"),
                        subtitle: const Text("Uploaded sometime ago"),
                      );
                    }
                  },
                ),
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                      title: const Text("John Wick"),
                      subtitle: Text(index / 2 == 0
                          ? "You have missed a call"
                          : "Call lasted for 5 mins"),
                      trailing: const Icon(Icons.phone),
                    );
                  },
                ),
              ],
            )));
  }
}
