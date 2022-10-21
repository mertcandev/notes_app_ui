import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lottie/lottie.dart';
import 'package:notes_app_ui/app_colors.dart';
import 'package:notes_app_ui/views/curved_box.dart';

class FolderView extends StatelessWidget {
  const FolderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
      body: MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          itemCount: 5,
          itemBuilder: (context, index) {
            return CurvedBox(children: [
              Lottie.asset("assets/folder.json", repeat: false),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  index == 0
                      ? Text("ToDo",
                          style: Theme.of(context).textTheme.titleLarge)
                      : index == 1
                          ? Text("Freelancer",
                              style: Theme.of(context).textTheme.titleLarge)
                          : index == 2
                              ? Text("Daily Life",
                                  style: Theme.of(context).textTheme.titleLarge)
                              : index == 3
                                  ? Text("My Targets",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge)
                                  : index == 4
                                      ? Text("Quotes",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge)
                                      : const SizedBox.shrink()
                ],
              )
            ]);
          }),
    );
  }
}
