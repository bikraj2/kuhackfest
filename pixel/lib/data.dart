import 'dart:typed_data';

import 'package:flutter/material.dart';

Widget buildProfileImage(value) => CircleAvatar(
      backgroundColor: Colors.green,
      backgroundImage: Image.memory(Uint8List.fromList(value)).image,
    );
