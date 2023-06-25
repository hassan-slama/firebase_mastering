import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserDate extends StatelessWidget {
  const GetUserDate({required this.docID});
  final String docID;

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(docID).get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Text('${data['firstname']}' +
              ' ' +
              '${data['lastname']}' +
              ', ' +
              '${data['age']}' +
              ' years old');
        }
        return Text("loading..");
      },
    );
  }
}
