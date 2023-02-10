// ignore_for_file: unnecessary_import, implementation_imports, unused_import

import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:students_1/db/model/models.dart';

import 'package:students_1/functions/db_function.dart';
import 'package:students_1/widgets/updatescreen.dart';

// ignore: camel_case_types
class studentdetails extends StatelessWidget {
  final studentmodel datas;
  const studentdetails({super.key, required this.datas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Profile'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: ListView(
            children: [
              Text(
                '  Name   :${datas.names}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '  AGE    :${datas.ages}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '  COURSE  :${datas.courses}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '  MARKS   ${datas.marks}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => updatescreen(
                              updatestudentmodel: datas,
                            ))));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  icon: const Icon(
                    Icons.edit,
                  ),
                  label: const Text('EDIT'))
            ],
          ),
        ),
      ),
    );
  }
}
