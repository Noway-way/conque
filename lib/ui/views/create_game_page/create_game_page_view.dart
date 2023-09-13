import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'create_game_page_viewmodel.dart';

class CreateGamePageView extends StackedView<CreateGamePageViewModel> {
  const CreateGamePageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CreateGamePageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  CreateGamePageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CreateGamePageViewModel();
}
