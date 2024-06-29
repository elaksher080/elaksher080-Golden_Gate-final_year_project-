import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  static const String routeName = "edit_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          textAlign: TextAlign.left,
          'Edit Profile',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Provide more details about yourself and any other information',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const Divider(color: Colors.grey, height: 2),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: SvgPicture.asset('assets/photos/user_photo.svg')),
                  Expanded(
                      flex: 7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Profile photo ',
                              style: Theme.of(context).textTheme.titleMedium),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                              'Add a nice photo of yourself recommend 1 : 1 photo',
                              maxLines: 2,
                              style: Theme.of(context).textTheme.titleSmall),
                          const SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18.0, vertical: 5),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadiusDirectional.circular(12),
                                      color: const Color(0xFF090C9B),
                                    ),
                                    child: Text(
                                      'Remove',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    // Navigator.of(context).pop();
                                  },
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                GestureDetector(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18.0, vertical: 5),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadiusDirectional.circular(12),
                                      color: const Color(0xFFB6A168),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Upload',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Icon(Icons.save_alt),
                                      ],
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            const Divider(color: Colors.grey, height: 2),
            SizedBox( height: 20,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Full name',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 20)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0,left: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Headline',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 20)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0,left: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Bio',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 20)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0,left: 16),
              child: TextFormField(
                maxLines: 2,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadiusDirectional.circular(12),
                    color: const Color(0xFF090C9B),
                  ),
                  child: Text(
                    'Save changes',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
