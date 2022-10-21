import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notes_app_ui/app_colors.dart';
import 'package:notes_app_ui/views/curved_box.dart';

class AllView extends StatelessWidget {
  const AllView({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
      body: AnimationLimiter(
        child: MasonryGridView.count(
            padding: const EdgeInsets.all(16),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            crossAxisCount: 2,
            itemCount: 6,
            itemBuilder: (context, i) {
              return AnimationConfiguration.staggeredGrid(
                position: i,
                columnCount: 2,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                      child: i == 0
                          ? CurvedBox(
                              children: [
                                Text(
                                  "Reminder",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                const _ListTileRow(
                                    isChecked: true,
                                    text: "Exploration Design"),
                                const _ListTileRow(
                                    isChecked: true, text: "Kuliah"),
                                const _ListTileRow(
                                    isChecked: false, text: "Learn 3D models"),
                                const _ListTileRow(
                                    isChecked: false, text: "Design shots"),
                                const SizedBox(height: 16),
                                const DateFooter(
                                    date: "Jan 17", footerText: "Todo")
                              ],
                            )
                          : i == 1
                              ? CurvedBox(
                                  children: [
                                    Text(
                                      "Quote today",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                        "The best preparation for tomorrow is doing your best today.\n- H. Jackson Jr."),
                                    const SizedBox(height: 16),
                                    const DateFooter(
                                        date: "Jan 21", footerText: "Quote")
                                  ],
                                )
                              : i == 2
                                  ? CurvedBox(
                                      children: [
                                        Text(
                                          "2022 Hope",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 8),
                                        const Text(
                                            "I have a dream that must come true"),
                                        const _ListTileRow(
                                            isChecked: true,
                                            text: "GPA above 3.60"),
                                        const _ListTileRow(
                                            isChecked: true,
                                            text: "Have an iPad"),
                                        const _ListTileRow(
                                            isChecked: false,
                                            text: "Holidays in Japan"),
                                        const SizedBox(height: 16),
                                        const DateFooter(
                                            date: "Jan 17",
                                            footerText: "My Targets")
                                      ],
                                    )
                                  : i == 3
                                      ? CurvedBox(
                                          padding: EdgeInsets.zero,
                                          children: [
                                            Container(
                                                height: 150,
                                                width: w,
                                                clipBehavior: Clip.hardEdge,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Image.network(
                                                  "https://raw.githubusercontent.com/Coffiie/personal_projects/develop/runtime_snippets/notes_app_ui_speed_code/assets/travel.jpg",
                                                  fit: BoxFit.cover,
                                                )),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16.0),
                                              child: Row(
                                                children: const [
                                                  Icon(
                                                    CupertinoIcons.location,
                                                    color: AppColors.lightGrey,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    'Kuta Beach',
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .lightGrey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.0),
                                              child: Text(
                                                'I stayed here for a big family vacation. This is a great affordable hotel to stay in Bali ...',
                                                style: TextStyle(
                                                    color: AppColors.lightGrey),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.0),
                                              child: DateFooter(
                                                  date: 'Dec 24',
                                                  footerText: 'Daily Life'),
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                          ],
                                        )
                                      : i == 4
                                          ? CurvedBox(
                                              children: [
                                                Text(
                                                  'Statistika',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleLarge!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                const Text(
                                                    'Data science is the domain of study that deals with vast volumes of data using modern tools and techniques to find unseen patterns, derive meaningful information, and make business decisions.'),
                                                const SizedBox(
                                                  height: 16,
                                                ),
                                                const DateFooter(
                                                    date: 'Jan 21',
                                                    footerText: 'My Targets')
                                              ],
                                            )
                                          : i == 5
                                              ? CurvedBox(
                                                  children: [
                                                    Text(
                                                      'My Diary >,<',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleLarge!
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                    const SizedBox(
                                                      height: 30,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: const [
                                                        Icon(
                                                          CupertinoIcons
                                                              .lock_fill,
                                                          size: 55,
                                                          color: AppColors
                                                              .lightGrey,
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 30,
                                                    ),
                                                    const DateFooter(
                                                        date: 'Jan 21',
                                                        footerText:
                                                            'My Targets')
                                                  ],
                                                )
                                              : const SizedBox.shrink()),
                ),
              );
            }),
      ),
    );
  }
}

class _ListTileRow extends StatelessWidget {
  final String text;
  final bool isChecked;

  const _ListTileRow({required this.text, required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 32,
          width: 16,
          child: Checkbox(
            value: isChecked,
            activeColor: AppColors.white,
            checkColor: AppColors.grey,
            onChanged: (bool? val) {},
            shape: const CircleBorder(
                side: BorderSide(color: AppColors.white, width: 2)),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
            child: Text(
          text,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ))
      ],
    );
  }
}

class DateFooter extends StatelessWidget {
  final String date, footerText;
  final TextStyle style = const TextStyle(color: AppColors.lightGrey);

  const DateFooter({super.key, required this.date, required this.footerText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          date,
          style: style,
        ),
        Text(
          footerText,
          style: style,
        )
      ],
    );
  }
}
