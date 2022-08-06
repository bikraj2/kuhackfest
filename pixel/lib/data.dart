 Widget buildProfileImage(value) => CircleAvatar(
        backgroundColor: Colors.green,
        backgroundImage: Image.memory(Uint8List.fromList(value)).image,
      );