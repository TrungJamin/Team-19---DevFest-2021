import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../loading_state_view_model.dart';
import 'loading.dart';

class ContainerWithLoading extends HookWidget {
  const ContainerWithLoading({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final state = useProvider(loadingStateProvider);
    return Stack(children: [
      child,
      state.isLoading ? const Loading() : const SizedBox(),
    ]);
  }
}
