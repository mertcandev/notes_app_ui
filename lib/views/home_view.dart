import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_ui/app_colors.dart';
import 'package:notes_app_ui/views/all_view.dart';
import 'package:notes_app_ui/views/folder_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Edit",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColors.lightTextColor),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.search),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.ellipsis_circle))
          ],
          leadingWidth: 0,
          leading: const SizedBox.shrink(),
          title: const Text("Notes"),
          bottom: const TabBar(
            tabs: [Tab(text: "All"), Tab(text: "Folder")],
          ),
        ),
        body: const TabBarView(children: [AllView(), FolderView()]),
      ),
    );
  }
}
