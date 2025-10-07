import 'package:flutter/material.dart';

myTabBar({required TabController tabController, required BuildContext context}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(60),
    child: TabBar(
      controller: tabController,
      unselectedLabelStyle: Theme.of(context).textTheme.labelLarge,
      labelStyle: Theme.of(context).textTheme.bodyLarge,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Theme.of(context).colorScheme.primary,  
      indicatorWeight: 4,
      tabs: [
        Tab(child: Text("Chats")),
        Tab(child: Text("Groups")),
        Tab(child: Text("Calls")),
      ],

    ),
  );
}
